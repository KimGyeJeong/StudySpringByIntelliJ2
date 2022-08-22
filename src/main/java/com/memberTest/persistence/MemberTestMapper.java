package com.memberTest.persistence;

import com.memberTest.domain.MemberTestDTO;

public interface MemberTestMapper {

    public int insertMember(MemberTestDTO member);

    public int idpwChk(MemberTestDTO member);

    public MemberTestDTO getmemberInfo(MemberTestDTO member);

    public MemberTestDTO updatemember(MemberTestDTO member);
}
