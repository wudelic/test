package com.zh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zh.pojo.Route;
import com.zh.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class RouteController {
    @Autowired
    private RouteService routeService;
    //搜索全部线路
    @RequestMapping("/queryAllRoute")
    public String queryAllGoods(Model model,@RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        List<Route> list = routeService.queryAll();
        PageInfo<Route> pageInfo = new PageInfo<Route>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Route",list);
        return "background3";
    }
    //通过线路名查找
    @RequestMapping("/queryByRadd")
    public String queryByRadd(@RequestParam("Radd")String Radd, Model model,
                               @RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        model.addAttribute("Radd",Radd);
        List<Route> list = routeService.queryByRadd(Radd);
        PageInfo<Route> pageInfo = new PageInfo<Route>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Route",list);
        return "background3";
    }

    @RequestMapping("/route/delete/{Rid}")
    public String delete(@PathVariable("Rid")Integer Rid, Model model){

        boolean suc = routeService.delete(Rid);
        model.addAttribute("deleteFlag",suc);
        List<Route> list = routeService.queryAll();
        model.addAttribute("Route",list);
        return "background3";
    }

    //增加线路
    @RequestMapping("/toAddRoute")
    public String toAddRoute(){
        return "addRoute";
    }
    @RequestMapping("/route/add")
    public String addRoute(Model model,Route route)
    {
        if(route != null)
        {
            routeService.saveRoute(route);
        }
        return "background3";
    }
    //修改订单
    @RequestMapping("/route/update")
    public String updateRoute(Model model,Route route){
        if (routeService.updateRoute(route)){
            route = routeService.findRouteById(route.getRid());
            model.addAttribute("route",route);
            return "redirect:/jsp/background3.jsp";
        }
        return "test";
    }
    @RequestMapping("/getRoute")
    public String getRoute(int Rid,Model model){
        model.addAttribute("route",routeService.findRouteById(Rid));
        return "editRoute";
    }


}
