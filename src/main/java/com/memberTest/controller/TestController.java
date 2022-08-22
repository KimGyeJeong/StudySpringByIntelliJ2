package com.memberTest.controller;

//jquery 테스트용 컨트롤러

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j
@RequestMapping("/test/*")
public class TestController {

    @GetMapping("testjquery1")
    public void test1(){

    }
}
