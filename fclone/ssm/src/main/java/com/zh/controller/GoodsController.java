package com.zh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zh.pojo.Goods;
import com.zh.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class GoodsController {
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/queryAllGoods")
    public String queryAllGoods(Model model,@RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        List<Goods> list = goodsService.queryAll();
        PageInfo<Goods> pageInfo = new PageInfo<Goods>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Goods",list);
        return "background2";
    }
    @RequestMapping("/queryByGname")
    public String queryByGname(@RequestParam("Gname")String Gname,Model model,
                               @RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        model.addAttribute("Gname",Gname);
        List<Goods> list = goodsService.queryByGname(Gname);
        PageInfo<Goods> pageInfo = new PageInfo<Goods>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Goods",list);
        return "background2";
    }

    @RequestMapping("/goods/delete/{Gid}")
    public String delete(@PathVariable("Gid")Integer Gid,Model model){

        boolean suc = goodsService.delete(Gid);
        model.addAttribute("deleteFlag",suc);
        List<Goods> list = goodsService.queryAll();
        model.addAttribute("Goods",list);
        return "background2";
    }


    @RequestMapping("/toAddGoods")
    public String toAddGoods(){
        return "addGoods";
    }

    @RequestMapping("/goods/add")
    public String addGoods(Model model,Goods goods){
        if(goods != null){
            goodsService.saveGoods(goods);
        }
        return "background2";
    }
    @RequestMapping("/goods/update")
    public String updateGoods(Model model,Goods goods){
        if(goodsService.updateGoods(goods)){
            goods = goodsService.findGoodsById(goods.getGid());
            model.addAttribute("goods",goods);
            return "redirect:/jsp/background2.jsp";
        }
        return "test";
    }
    @RequestMapping("/getGoods")
    public String getGoods(int Gid,Model model){
        model.addAttribute("goods",goodsService.findGoodsById(Gid));
        return "editGoods";
    }


}
