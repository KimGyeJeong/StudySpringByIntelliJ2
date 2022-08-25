package com.upload.domain;

import lombok.Data;

@Data
public class FileVO {

    private String Img_OriginName;  //업로드한 파일 원래 이름
    private String Img_Type;        //파일 타입(.jpeg)
    private String Img_UUID;        //파일 UUID 형태 (992-123 ....)
    private String Img_Name;        //파일이 실제 저장될 이름
    private String Img_Save_Path;   //파일이 저장되는 경로
}
