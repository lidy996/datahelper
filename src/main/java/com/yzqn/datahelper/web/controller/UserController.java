package com.yzqn.datahelper.web.controller;

import com.yzqn.datahelper.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    UserService userService;

    @RequestMapping("/getUser")
    public String init(){
        System.out.println(userService.getUser().toString());
        return "index";
    }
}
