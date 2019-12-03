package com.zhang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author: Administrator
 * Date: 2019/12/3 19:00
 * Description: 请详细描述类的作用
 */
@Controller
@RequestMapping("/admin")
public class ResetPwdController {

    @GetMapping("/resetPwd")
    public String login(){
        return "admin/resetPwd";
    }

}
