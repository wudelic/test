package com.zh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zh.pojo.Gorder;
import com.zh.service.GorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class GorderController {
    @Autowired
    private GorderService gorderService;

    @RequestMapping("/queryAllGorder")
    public String queryAllRorder(Model model,@RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        List<Gorder> list = gorderService.queryAll();
        PageInfo<Gorder> pageInfo = new PageInfo<Gorder>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Rorder",list);
        return "background5";
    }

    @RequestMapping("queryBygId")
    public String queryByrId(@RequestParam("goid")String goid, Model model,
                             @RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        model.addAttribute("roid",goid);
        List<Gorder> list = gorderService.queryBygId(goid);
        PageInfo<Gorder> pageInfo = new PageInfo<Gorder>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Rorder",list);
        return "background5";
    }
    @RequestMapping("/gorder/delete/{goid}")
    public String delete(@PathVariable("goid")Integer goid, Model model){

        boolean suc = gorderService.delete(goid);
        model.addAttribute("deleteFlag",suc);
        List<Gorder> list = gorderService.queryAll();
        model.addAttribute("Goods",list);
        return "background5";
    }

    @RequestMapping("/toAddGorder")
    public String toAddGorder(){
        return "addGorder";
    }
    @RequestMapping("/gorder/add")
    public String addGorder(Model model,Gorder gorder)
    {
        if(gorder != null)
        {
            gorderService.saveGorder(gorder);
        }
        return "background5";
    }

    @RequestMapping("/gorder/update")
    public String updateGorder(Model model,Gorder gorder){
        if (gorderService.updateGorder(gorder)){
            gorder = gorderService.findGorderById(gorder.getId());
            model.addAttribute("gorder",gorder);
            return "redirect:/jsp/background5.jsp";
        }
        return "test";
    }
    @RequestMapping("/getGorder")
    public String getGorder(int id,Model model){
        model.addAttribute("gorder",gorderService.findGorderById(id));
                return "editGorder";
    }
}
