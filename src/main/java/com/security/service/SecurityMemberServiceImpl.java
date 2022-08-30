package com.security.service;

import com.security.domain.AuthVO;
import com.security.domain.MemberVO;
import com.security.persistence.SecurityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class SecurityMemberServiceImpl implements SecurityMemberService{

    @Autowired
    private SecurityMapper mapper;

    //비밀번호 암호화를 위한 객체 자동 주입
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public int addMember(MemberVO member) {
        //비밀번호 암호화
        member.setPw(bCryptPasswordEncoder.encode(member.getPw()));
        return mapper.addMember(member);
    }

    @Override
    public int addAuth(String auth, String id) {
        int result = -1;
        AuthVO authVO = new AuthVO();
        authVO.setId(id);
        if(auth.equals("member")){
            //일반 회원 가입시 권한 추가
            authVO.setAuth("ROLE_MEMBER");
            result = mapper.addAuth(authVO);
        }else if(auth.equals("admin")){
            //관리자로 가입시 권한 추가
            //일반회원 + 관리자
            authVO.setAuth("ROLE_MEMBER");
            mapper.addAuth(authVO);
            authVO.setAuth("ROLE_ADMIN");
            result = mapper.addAuth(authVO);
        }
        return result;
    }

    @Override
    public MemberVO getMember(String id) {
        return mapper.getMember(id);
    }

    @Override
    public int modifyMember(MemberVO member) {

        int result = 0;

        MemberVO dbmember = getMember(member.getId());
        if(bCryptPasswordEncoder.matches(member.getPw(), dbmember.getPw())){
            result = 1;

            mapper.updateMember(member);
        }
        return result;
    }

    @Override
    public int deleteMember(MemberVO member) {

        int result = 0;

        MemberVO dbmember = getMember(member.getId());
        if(bCryptPasswordEncoder.matches(member.getPw(), dbmember.getPw())){
            result = 1;

            mapper.deleteAuth(member.getId());
            mapper.deleteMember(member.getId());
        }

        return result;
    }
}
