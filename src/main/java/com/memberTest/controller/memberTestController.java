package com.memberTest.controller;

import com.memberTest.domain.MemberTestDTO;
import com.memberTest.service.MemberTestService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j
@RequestMapping("/membertest/*")
public class memberTestController {

    @Autowired
    private MemberTestService service;

    @RequestMapping("test1")
    public String test1(Model model){

        model.addAttribute("test",123);

        return "index";
    }

    //Main page
    @GetMapping("main")
    public void mainpage(){

    }
    //signup page
    @GetMapping("signup")
    public void signup(){

    }

    @PostMapping("signuppro")
    public String signuppro(MemberTestDTO member, Model model){

        model.addAttribute("member",member);
        model.addAttribute("result",service.insertMember(member));

        return "membertest/signuppro";
    }

    @GetMapping("login")
    public void login(){

    }

    @PostMapping("login")
    public String loginPro(MemberTestDTO member,Model model){

        model.addAttribute("member",member);

        int result = service.idpwChk(member);

        model.addAttribute("result",result);

        return "membertest/loginpro";
    }

    @GetMapping("myinfo")
    public String getmemberInfo(MemberTestDTO member,Model model){

        member = service.getmemberInfo(member);
        model.addAttribute("member",member);
        return "membertest/myinfo";
    }

    @PostMapping("updatemember")
    public String updatemember(MemberTestDTO member, String pwchange, Model model ){

        member = service.updatemember(member, pwchange);
        model.addAttribute("member",member);
        return "membertest/myinfo";
    }
}
