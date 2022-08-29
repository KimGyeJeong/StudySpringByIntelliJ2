package com.security.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j
@RequestMapping("/common/*")
public class CommonController {

    @GetMapping("main")
    public void main(){

    }

    @GetMapping("login")
    public void login(){

    }

    @GetMapping("signup")
    public void signup(){
        
    }
}
