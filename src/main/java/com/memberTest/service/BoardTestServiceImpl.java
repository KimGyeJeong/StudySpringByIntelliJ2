package com.memberTest.service;

import com.memberTest.domain.BoardTestVO;
import com.memberTest.domain.Criteria;
import com.memberTest.persistence.BoardTestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardTestServiceImpl implements BoardTestService{

    @Autowired
    private BoardTestMapper mapper;

    @Override
    public List<BoardTestVO> getAll() {
        return mapper.getAll();
    }

    @Override
    public List<BoardTestVO> getListWithPaging(Criteria cri){

        return mapper.getListWithPaging(cri);
    }

    @Override
    public int insertboard(BoardTestVO board) {
        return mapper.insertboard(board);
    }

    @Override
    public BoardTestVO getOne(Long bno) {
        return mapper.getOne(bno);
    }

    @Override
    public int modify(BoardTestVO board, Long bno) {
        System.out.println("----------------------------------------------------------------------------");
        System.out.println("modify Service...");
        System.out.println("bno: " + bno);

        board.setBno(bno);
        return mapper.modify(board);
    }

    @Override
    public int getTotal(Criteria criteria) {
        return mapper.getTotal(criteria);
    }

    @Override
    public List<BoardTestVO> getList(Criteria criteria) {
        return mapper.getList(criteria);
    }
}
