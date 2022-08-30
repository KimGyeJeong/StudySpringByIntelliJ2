package com.security.service;

import com.security.domain.MemberVO;

public interface SecurityMemberService {

    //회원가입(추가)
    public int addMember(MemberVO member);

    //권한추가(회원 가입과 분리)
    public int addAuth(String auth, String id);

    //회원 정보 가져오기
    public MemberVO getMember(String id);

    //회원 정보 수정처리
    public int modifyMember(MemberVO member);

    //회원 탈퇴 처리
    public int deleteMember(MemberVO member);
}
