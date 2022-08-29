package com.security.domain;

import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

@Data
public class MemberVO {
    private String id;
    private String pw;
    private String name;
    private String email;
    private String gender;
    private Timestamp reg;
    private String enabled; //active '1', deactive '0'
    private List<AuthVO> authList;
}
