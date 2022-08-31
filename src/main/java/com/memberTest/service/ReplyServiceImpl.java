package com.memberTest.service;

import com.memberTest.domain.ReplyVO;
import com.memberTest.persistence.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplyServiceImpl implements  ReplyService{

    @Autowired
    private ReplyMapper mapper;

    @Override
    public int add(ReplyVO vo) {
        return 0;
    }

    @Override
    public ReplyVO getReply(Long rno) {
        return null;
    }

    @Override
    public int modifyReply(ReplyVO vo) {
        return 0;
    }

    @Override
    public int deleteReply(Long rno) {
        return 0;
    }

    @Override
    public List<ReplyVO> getList(Long bno) {
        return mapper.getList(bno);
    }
}
