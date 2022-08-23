package com.memberTest.controller;

import com.memberTest.domain.BoardTestVO;
import com.memberTest.service.BoardTestService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j
@Controller
@RequestMapping("/boardtest/*")
public class BoardTestController {

    @Autowired
    private BoardTestService service;

    @GetMapping("list")
    public void list(Model model){
        model.addAttribute("board",service.getAll());
    }

    @GetMapping("write")
    public String write(){

        return "boardtest/write";
    }
    @PostMapping("write")
    public String writePro(BoardTestVO board){

        service.insertboard(board);

        return "redirect:/boardtest/list";
    }

    @GetMapping({"read","modify"})
    public void read(Model model, Long bno){
        model.addAttribute("board",service.getOne(bno));
    }
    @PostMapping("modify")
    public String modify(BoardTestVO board, Long bno){

        log.info(board.toString());
        log.info(bno);

        //INFO : com.memberTest.controller.BoardTestController - BoardTestVO(bno=null, title=title5, content=update 555555, writer=writer5, reg=null)
        //INFO : com.memberTest.controller.BoardTestController -

        int result = service.modify(board, bno);
        log.info("-------------------------------------------");
        log.info(result);

        return "redirect:/boardtest/list";
    }

}
