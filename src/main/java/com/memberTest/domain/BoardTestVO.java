package com.memberTest.domain;

import lombok.Data;

import java.util.Date;

@Data
public class BoardTestVO {
    private Long bno;
    private String title;
    private String content;
    private String writer;
    private Date reg;
}
