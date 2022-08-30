package com.security.controller;

import com.security.domain.MemberVO;
import com.security.service.SecurityMemberService;
import com.security.service.domain.CustomUser;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {

    @Autowired
    private SecurityMemberService service;

    @GetMapping("mypage")
    public void mypage(){
        
    }
    @GetMapping("modify")
    public void modify(Model model, Authentication authentication){
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        log.info(customUser);
        //INFO : com.security.controller.MemberController - com.security.service.domain.CustomUser@b9bdc9fd: Username: testadmin; Password: [PROTECTED]; Enabled: true; AccountNonExpired: true; credentialsNonExpired: true; AccountNonLocked: true; Granted Authorities: ROLE_ADMIN,ROLE_MEMBER
        log.info(customUser.getUsername());
        //INFO : com.security.controller.MemberController - testadmin

        MemberVO memberVO = service.getMember(customUser.getUsername());
        model.addAttribute("member", memberVO);
        log.info(memberVO.toString());

    }
    @PostMapping("modify")
    public String modifyPro(MemberVO memberVO, Model model, Authentication authentication){
        memberVO.setId(((CustomUser)authentication.getPrincipal()).getUsername());

        log.info("======"+memberVO.toString());
        int result = service.modifyMember(memberVO);
        model.addAttribute("result", result);

        return "member/modifyPro";
    }

    @GetMapping("delete")
    public void delete(){}

    @PostMapping("delete")
    public String deletePro(MemberVO memberVO, Authentication authentication, Model model){
        memberVO.setId(((CustomUser)authentication.getPrincipal()).getUsername());
        int result = service.deleteMember(memberVO);
        model.addAttribute("result",result);

        return "member/deletePro";
    }


}
