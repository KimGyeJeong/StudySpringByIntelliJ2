package com.memberTest.domain;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class ReplyVO {

    private Long rno;			//댓글 고유 번호
    private Long bno;			//댓글이 달린 본문 글 번호
    private String reply;		//댓글 내용
    private String replyer;		//댓글 작성자
    private Timestamp reg;		//댓글 달린 시간

}
