package com.yzqn.datahelper.web.controller.information;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 个人信息相关
 * @author yzqn
 */

@Controller
@RequestMapping("/info")
public class InformationController {

    /**
     * 我的信息
     * @return
     */
    @RequestMapping("/")
    public String info(){
        return "information/info";
    }

    /**
     * 修改密码
     * @return
     */
    @RequestMapping("/modify/password")
    public String modifyPassword(){
        return "information/modify-password";
    }
}
