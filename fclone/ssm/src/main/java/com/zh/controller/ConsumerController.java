package com.zh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zh.pojo.Consumer;
import com.zh.service.ConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ConsumerController {

    @Autowired
    private ConsumerService consumerService;
    //搜索全部
    @RequestMapping("/m3")
    public String main(Model model,@RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        List<Consumer> list = consumerService.queryAll();
        PageInfo<Consumer> pageInfo = new PageInfo<Consumer>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Consumer",list);
        return "background";
    };
    //通过用户名搜索
    @RequestMapping("/query/username")
    public String queryByUsername(@RequestParam("username")String username,
                                  Model model,@RequestParam(defaultValue = "1",required = false,value = "pn")Integer pn){
        PageHelper.startPage(pn,5);
        model.addAttribute("username",username);
        List<Consumer> list = consumerService.queryByUsername(username);
        PageInfo<Consumer> pageInfo = new PageInfo<Consumer>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("Consumer",list);
        return "background";
    }
    //通过id删除
    @RequestMapping("/consumer/delete/{id}")
    public String delete(@PathVariable("id") Integer id,Model model){

        boolean suc = consumerService.delete(id);
        model.addAttribute("deleteFlag",suc);
        List<Consumer> list = consumerService.queryAll();
        model.addAttribute("Consumer",list);
        return "background";
    }
    //用户登录
    @RequestMapping("/account/login")
    public String login(Consumer consumer, Model model, HttpSession session){
      boolean existsUsername = consumerService.existsUsername(consumer.getUsername());

      if(existsUsername){
          //登陆
          consumer = consumerService.login(consumer);
          if (consumer == null) {

              //密码错误
              model.addAttribute("errorMsg","密码错误");
              return "login";
          }
          else{
              //登陆成功
              session.setAttribute("consumer",consumer);
              return "index";
          }
      }else{
          if (consumer.getUsername() == "admin1" && consumer.getPassword() == "admin1")
              return "background";
          else{
              model.addAttribute("errorMsg","用户不存在");
              //用户名不存在
              return "login";
          }

      }
    }
    //登出
    @RequestMapping("/logout")
    public String logout(HttpSession session){

        session.removeAttribute("consumer");
        session.invalidate();

        return "redirect:/";
    }
    //注册
    @RequestMapping("/regist")
    public String regist(Consumer consumer,Model model){
        consumer.getUsername();consumer.getPassword();
        consumer.getTel();consumer.getEmail();consumer.getSex();
        if(consumerService.existsUsername(consumer.getUsername()))
        {
            model.addAttribute("flag",1);
            model.addAttribute("msg","用户名已存在");

            return "resign";
        }
        else {
            consumerService.regist(consumer);
            model.addAttribute("msg","注册成功");
            return "success";
        }
    }
    //修改密码
    @RequestMapping("/modeifyPassword")
    public String modeifyPassword(Consumer consumer,Model model,@RequestParam("newpassword")String newpasswprd,HttpSession session){
        boolean existsUsername = consumerService.existsUsername(consumer.getUsername());

        if(existsUsername){
            consumer = consumerService.login(consumer);
            if(consumer == null){
                model.addAttribute("msg","密码错误");
                return "modeifyPassword";
            } else{
                //修改密码
                consumerService.modifyPasswordByUsername(consumer.getUsername(),newpasswprd);
                model.addAttribute("flag",1);
                model.addAttribute("msg","修改成功");

                return "modeifyPassword";
            }

        }else{
            model.addAttribute("msg","用户不存在");
            return "modeifyPassword";
        }
    }

    //增加用户
    @RequestMapping("/toAddConsumer")
    public String toAddConsumer(){
        return "addConsumer";
    }
    @RequestMapping("/consumer/add")
    public String addConsumer(Model model,Consumer consumer) {
        if(consumer != null){
            consumerService.saveConsumer(consumer);
        }
        return "background";
    }
    //更改用户资料
    @RequestMapping("/consumer/update")
    public String updateConsumer(Model model,Consumer consumer){
        if(consumerService.updateConsumer(consumer)){
            consumer = consumerService.findConsumerById(consumer.getId());
            model.addAttribute("consumer",consumer);
            return "redirect:/jsp/background.jsp";

        }
        return "test";
    }
    //修改用户
    @RequestMapping("/getConsumer")
    public String getConsumer(int id,Model model){
        model.addAttribute("consumer",consumerService.findConsumerById(id));
        return "editConsumer";
    }
}
