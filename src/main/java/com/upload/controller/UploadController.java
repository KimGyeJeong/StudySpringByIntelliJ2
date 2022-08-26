package com.upload.controller;

import com.memberTest.domain.Criteria;
import com.upload.domain.FileVO;
import com.upload.service.UploadService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.security.auth.login.LoginContext;
import java.io.File;
import java.util.UUID;

@Controller
@Log4j
@RequestMapping("/upload/*")
public class UploadController {

    @Autowired
    private UploadService service;

    @GetMapping("uploadForm")
    public void upload() {

    }

    @PostMapping("uploadPro")
    //@GetMapping("uploadPro")  get방식은 405 에러 -->  request method 'GET' not supported
    public void uploadPro(@RequestParam String msg, MultipartHttpServletRequest request, Model model) {

        int result = 0;
        log.info("MSG : " + msg);

        try {

            String path = request.getRealPath("/resources/uploadHere");
            log.info("PATH : " + path);

            //전송할 파일 정보 꺼내기
            MultipartFile mf = request.getFile("img");
            FileVO fileVO = new FileVO();

            //원본 이름
            fileVO.setImg_OriginName(mf.getOriginalFilename());
            log.info("Orign : " + fileVO.getImg_OriginName());

            //파일 확장자명 예) .jpg
            //fileVO.setImg_Type(mf.getContentType());
            fileVO.setImg_Type(fileVO.getImg_OriginName().substring(fileVO.getImg_OriginName().lastIndexOf(".")));
            log.info("Type : " + fileVO.getImg_Type());

            //UUID - 없이, 대문자로 저장
            fileVO.setImg_UUID(UUID.randomUUID().toString().replaceAll("-", "").toUpperCase());
            log.info("UUID : " + fileVO.getImg_UUID());

            //저장할 이름 UUID + Type
            fileVO.setImg_Name(fileVO.getImg_UUID() + fileVO.getImg_Type());
            log.info("Name : " + fileVO.getImg_Name());

            fileVO.setImg_Save_Path("C:\\Users\\pmwkd\\Desktop\\img\\intellij_img\\" + fileVO.getImg_Name());
            log.info("Path : " + fileVO.getImg_Save_Path());

            File copyFile = new File(fileVO.getImg_Save_Path());
            mf.transferTo(copyFile);

            log.info("fileVo.toString : "+fileVO.toString());
            result = service.insert(fileVO);

        } catch (Exception e) {
            e.printStackTrace();
        }

    model.addAttribute("result",result);
    }

    @GetMapping("download")
    public void download(){

    }

    @PostMapping("download")
    public ModelAndView downloadPro(){
        File f = null;

        f=new File("C:\\Users\\pmwkd\\Desktop\\img\\intellij_img\\D8C7B11648E24C9A950B0EC7F1102273.jpg");

        log.info("downloadPost...");

        ModelAndView mv = new ModelAndView("fileDown","downloadFile",f);
        return mv;
    }

    @GetMapping("downloadhere")
    public void downloadhere(Model model){

        model.addAttribute("list",service.getAll());
    }
    @PostMapping("downloadhere2")
    public ModelAndView downloadhere(String imgPath){
        File f = new File(imgPath);
        ModelAndView mv = new ModelAndView("fileDown","downloadFile",f);
        return mv;
    }

}
