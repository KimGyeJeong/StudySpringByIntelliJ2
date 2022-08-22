package com.memberTest.service;

import com.memberTest.domain.MemberTestDTO;

public interface MemberTestService {

    public int insertMember(MemberTestDTO member);

    public int idpwChk(MemberTestDTO member);

    public MemberTestDTO getmemberInfo(MemberTestDTO member);

    public MemberTestDTO updatemember(MemberTestDTO member, String pwchange);

    public int logoutmember();

    public int deleteMember(String pw);

    public int deleteMemberChk(String pw);
}
