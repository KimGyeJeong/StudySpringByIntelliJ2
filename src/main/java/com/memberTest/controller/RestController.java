package com.memberTest.controller;

import com.memberTest.domain.ReplyVO;
import com.memberTest.service.ReplyService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.*;
import java.util.List;

@RequestMapping("/reply/*")
@org.springframework.web.bind.annotation.RestController
@Log4j
public class RestController {

    @Autowired
    private ReplyService service;

    @GetMapping(value = "list/{bno}", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
    public ResponseEntity<List<ReplyVO>> getList(@PathVariable("bno") Long bno){

        List<ReplyVO> list = service.getList(bno);
        log.info("======================================================================================================================");
        log.info(list);
        return new ResponseEntity<>(list, HttpStatus.OK);
//        return new ResponseEntity<List<ReplyVO>>(list, HttpStatus.OK);    위에도 정상작동
    }


}
