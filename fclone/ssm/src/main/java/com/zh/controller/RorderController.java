package com.zh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zh.pojo.Rorder;
import com.zh.service.RorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import java.util.List;

@Controller
public class RorderController {
    @Autowired
    private RorderService rorderService;
    //搜索全部
    @RequestMapping("/queryAllRorder")
    public String queryAllRorder(Model model,@RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        List<Rorder> list = rorderService.queryAll();
        PageInfo<Rorder> pageInfo = new PageInfo<Rorder>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Rorder",list);
        return "background4";
    }
    //通过id搜索
    @RequestMapping("/queryByrId")
    public String queryByrId(@RequestParam("roid")String roid,Model model,
                             @RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        model.addAttribute("roid",roid);
        List<Rorder> list = rorderService.queryByrId(roid);
        PageInfo<Rorder> pageInfo = new PageInfo<Rorder>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Rorder",list);
        return "background4";
    }
    //通过id删除
    @RequestMapping("/rorder/delete/{roid}")
    public String delete(@PathVariable("roid")Integer roid, Model model){

        boolean suc = rorderService.delete(roid);
        model.addAttribute("deleteFlag",suc);
        List<Rorder> list = rorderService.queryAll();
        model.addAttribute("Goods",list);
        return "background4";
    }
    @RequestMapping("/rorder/delete2/{roid}")
    public String delete2(@PathVariable("roid")Integer roid, Model model){

        boolean suc = rorderService.delete(roid);
        model.addAttribute("deleteFlag",suc);
        List<Rorder> list = rorderService.queryAll();
        model.addAttribute("Goods",list);
        return "test";
    }
    //增加订单
    @RequestMapping("/toAddRorder")
    public String toAddRorder(){
        return "addRorder";
    }
    @RequestMapping("/rorder/add")
    public String addRorder(Model model,Rorder rorder)
    {
        if(rorder != null)
        {
            rorderService.saveRorder(rorder);
        }
        return "background4";
    }
    //修改订单
    @RequestMapping("/rorder/update")
    public String updateRorder(Model model,Rorder rorder){
        if (rorderService.updateRorder(rorder)){
            rorder = rorderService.findRorderById(rorder.getId());
            model.addAttribute("rorder",rorder);
            return "redirect:/jsp/background4.jsp";
        }
        return "test";
    }
    @RequestMapping("/getRorder")
    public String getRorder(int id,Model model){
        model.addAttribute("rorder",rorderService.findRorderById(id));
        return "editRorder";
    }
    //通过用户追加订单
    @RequestMapping("/ConsumeraddRorder")
    public String ConsumeraddRorder(Model model,Rorder rorder){
        if(rorder != null)
        {
            rorderService.ConsumeraddRorder(rorder);
        }

        return "test";
    }
    //返回用户订单
    @RequestMapping("/ConsumerRorder")
    public String ConsumerRorder(Model model,String uid){
        model.addAttribute("uid", uid);
        List<Rorder> list = rorderService.findRorderByUid(uid);
        model.addAttribute("rorder",list);

        return "Rorder";
    }
}
