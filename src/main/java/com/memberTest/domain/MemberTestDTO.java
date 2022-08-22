package com.memberTest.domain;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class MemberTestDTO {
    private String id;
    private String pw;
    private String name;
    private String gender;
    private String email;
    private Timestamp reg;
}
