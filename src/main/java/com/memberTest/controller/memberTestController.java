package com.memberTest.controller;

import com.memberTest.domain.MemberTestDTO;
import com.memberTest.service.MemberTestService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@Log4j
@RequestMapping("/membertest/*")
public class memberTestController {

    @Autowired
    private MemberTestService service;

    @RequestMapping("test1")
    public String test1(Model model) {

        model.addAttribute("test", 123);

        return "index";
    }

    //Main page
    @GetMapping("main")
    public void mainpage() {

    }

    //signup page
    @GetMapping("signup")
    public void signup() {

    }

    @PostMapping("signuppro")
    public String signuppro(MemberTestDTO member, Model model) {

        model.addAttribute("member", member);
        model.addAttribute("result", service.insertMember(member));

        return "membertest/signuppro";
    }

    @GetMapping("login")
    public void login() {

    }

    @PostMapping("login")
    public String loginPro(MemberTestDTO member, Model model) {

        model.addAttribute("member", member);

        int result = service.idpwChk(member);

        if (result > 0) {
            return "membertest/main";
        } else {
            model.addAttribute("result", result);
            return "membertest/loginpro";
        }
    }

    @GetMapping("myinfo")
    public String getmemberInfo(MemberTestDTO member, Model model) {

        member = service.getmemberInfo(member);
        model.addAttribute("member", member);
        return "membertest/myinfo";
    }

    @PostMapping("updatemember")
    public String updatemember(MemberTestDTO member, String pwchange, Model model) {

        member = service.updatemember(member, pwchange);
        if (member.getGender().isEmpty()) {
            System.out.println("getGender is null...");
            return "redirect:membertest/myinfo";
        }
        model.addAttribute("member", member);
        return "membertest/myinfo";
    }

    @GetMapping("logout")
    public String logout(Model model) {

        int result = service.logoutmember();
        log.info("-------------------------------------------------------");
        log.info("logout : " + result);

        model.addAttribute("result", result);

        if (result < 2) {
            //로그아웃 성공
            //return "redirect:membertest/main"; ERROR 주소가 memberTest/memberTest/main 으로 이동
            return "redirect:main";
        } else {
            //로그아웃 실패
            log.warn("심각한 문제입니다! 로그아웃에 실패했다구여!");
            return "membertest/logout";
        }
    }

    @GetMapping("delete")
    public void delete() {
    }

    @PostMapping("delete")
    public String deletePro(String pwck, Model model, HttpSession session) {

        int result = service.deleteMember(pwck);
        log.info("-----------------------------------------");
        log.info("result : " + result);

        //model.addAttribute("id", (String)session.getAttribute("memId"));

        return "redirect:main";
    }

    @PostMapping("pwckForDeleteMember")
    @ResponseBody
    public String pwckForDeleteMember(String pw) {
        int result = service.deleteMemberChk(pw);

        if (result > 0) {
            return "Delete";
        } else {
            return ("Can't Delete");
        }
    }

}
