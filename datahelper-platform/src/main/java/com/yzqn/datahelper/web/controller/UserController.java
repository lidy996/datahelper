package com.yzqn.datahelper.web.controller;

import com.yzqn.datahelper.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class UserController {

    @Resource
    UserService userService;

    @RequestMapping("")
    public String init(Model model){
        model.addAttribute("username",userService.getUser().getUsername());
        model.addAttribute("password",userService.getUser().getPassword());

        return "index";
    }
}
