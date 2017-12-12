package com.yzqn.datahelper.web.controller.manage.project;

import com.yzqn.datahelper.web.dto.JsonResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 项目相关
 * @author yzqn
 */
@Controller
@RequestMapping("/project")
public class ProjectController {

    @RequestMapping("/create")
    public String createProject(){
        return "project/create-project";
    }

    /**
     * 保存项目
     * @param title
     * @param description
     * @param open
     * @return
     */
    @RequestMapping("/save")
    @ResponseBody
    public JsonResult create(String title,String description,String open){
        System.out.println(title);
        System.out.println(description);
        System.out.println(open);
        return new JsonResult(0);
    }
}
