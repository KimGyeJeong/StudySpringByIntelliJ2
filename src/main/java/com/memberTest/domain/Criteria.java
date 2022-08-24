package com.memberTest.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.util.UriComponentsBuilder;

//@Data
@Getter
@Setter
@ToString
public class Criteria {

    //게시판 사용시 부수적으로 필요한 데이터들 묶음
    private int pageNum;
    private int listQty;

    public Criteria() {
        this(1, 10);
    }

    public Criteria(int pageNum, int listQty) {
        this.pageNum = pageNum;
        this.listQty = listQty;
    }

    //url 링크에 붙히는 쿼리 스트링 자동 생성해주는 메서드
    //주로 JS를 사용할 수 없는 상황에서 링크를 처리해야하는 상황에 사용됨.
    public String getListLink() {
        UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
                .queryParam("pageNum", this.pageNum)
                .queryParam("listQty", this.listQty);

        System.out.println("builder.tostring : " + builder.toString());
        System.out.println("builder.touristring : " + builder.toUriString());


        return builder.toUriString();
    }
}
