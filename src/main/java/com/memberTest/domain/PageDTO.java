package com.memberTest.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageDTO {

    //페이지 번호등 페이징 처리시 필요한 정보 담는 클래스

    private int startPage;
    private int endPage;

    //previous, next 버튼 활성화 true/false
    private boolean prev;
    private boolean next;

    //전체 글의 개수 가져오기
    private int total;

    private Criteria cri;


    public PageDTO(Criteria cri, int total){
        this.cri = cri;
        this.total = total;

        //한 페이지에 페이지 번호 10개 띄우는 기준으로 계산하기
        this.endPage = (int) (Math.ceil(cri.getPageNum()/10.0)*10);
        this.startPage = this.endPage - 9;

        //만약 글의 갯수가 123개면 12페이지가 아닌 13페이지가 나와야함.
        int realEnd = (int)(Math.ceil((total*1.0)/cri.getListQty()));
        System.out.println("realEnd : " + realEnd);

        if(realEnd < this.endPage){
            //전체 페이지수보다 endPage가 크면
            //마지막 페이지 번호를 전체페이지로 변경
            this.endPage = realEnd;
        }

        //1페이지에서는 prev 를 활성화 할 필요가 없음
        this.prev = this.startPage>1;

        //endpage 가 realend보다 작을경우 다음페이지로 갈 수 있는 next 할성화
        this.next = this.endPage < realEnd;

    }


}
