package com.yzqn.datahelper.web.controller.console;

import com.yzqn.datahelper.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 控制台
 * @author yzqn
 */
@Controller
@RequestMapping("/platform")
public class ConsoleController {

    @Resource
    UserService userService;

    @RequestMapping("")
    public String init(Model model){
        model.addAttribute("username",userService.getUser().getUsername());
        model.addAttribute("password",userService.getUser().getPassword());
        return "index";
    }
}
