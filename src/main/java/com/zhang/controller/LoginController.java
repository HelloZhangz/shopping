package com.zhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author: Administrator
 * Date: 2019/12/2 14:58
 * Description: 请详细描述类的作用
 */
@Controller
@RequestMapping("/admin")
public class LoginController {

    @GetMapping("/login")
    public String login(){
        return "admin/login";
    }

}
