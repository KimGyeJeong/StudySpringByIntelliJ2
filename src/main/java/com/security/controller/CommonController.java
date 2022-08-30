package com.security.controller;

import com.security.domain.MemberVO;
import com.security.service.SecurityMemberService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j
@RequestMapping("/common/*")
public class CommonController {

    @Autowired
    private SecurityMemberService service;

    @GetMapping("main")
    public void main() {

    }

    @GetMapping("login")
    public void login() {

    }

    @GetMapping("signup")
    public void signup() {

    }

    @PostMapping("signup")
    public String signupPro(MemberVO memberVO, @RequestParam("au") String au, RedirectAttributes rttr) {

        int result, result2;
        result = service.addMember(memberVO);
        result2 = service.addAuth(au, memberVO.getId());

        if(result == result2){
            log.info("result == result2 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
            rttr.addFlashAttribute("msg","success");
        }

        return "redirect:/common/main";
    }
}
