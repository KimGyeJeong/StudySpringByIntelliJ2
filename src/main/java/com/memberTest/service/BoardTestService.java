package com.memberTest.service;

import com.memberTest.domain.BoardTestVO;
import com.memberTest.domain.Criteria;

import java.util.List;

public interface BoardTestService {

    //글 전체 가져오기
    public List<BoardTestVO> getAll();

    //글 전체 가져오기2
    public List<BoardTestVO> getListWithPaging(Criteria cri);

    //글 작성
    public int insertboard(BoardTestVO board);

    //글 한개 가져오기
    public BoardTestVO getOne(Long bno);

    //글 수정
    public int modify(BoardTestVO board, Long bno);

    //글 개수 가져오기
    public int getTotal(Criteria criteria);
}
