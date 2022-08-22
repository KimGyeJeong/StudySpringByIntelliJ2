package com.memberTest.service;

import com.memberTest.domain.MemberTestDTO;
import com.memberTest.persistence.MemberTestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

@Service
public class MemberTestServiceImpl implements MemberTestService {

    @Autowired
    private MemberTestMapper mapper;

    @Override
    public int insertMember(MemberTestDTO member) {
        return mapper.insertMember(member);
    }

    @Override
    public int idpwChk(MemberTestDTO member) {
        // 정상작동.
        //System.out.println("MemberTestServiceImpl. idpwChk Here");

        int result = mapper.idpwChk(member);

        if (result > 0) {
            RequestContextHolder.getRequestAttributes().setAttribute("memId", member.getId(), RequestAttributes.SCOPE_SESSION);
        }
        return result;
    }

    @Override
    public MemberTestDTO getmemberInfo(MemberTestDTO member) {

        String id = (String) RequestContextHolder.getRequestAttributes().getAttribute("memId", RequestAttributes.SCOPE_SESSION);
        member.setId(id);

        System.out.println("Impl... id : " + id);

        if (member != null)
            member = mapper.getmemberInfo(member);

        System.out.println("Impl.getmemberInfo. member : " + member);

        return member;
    }

    public MemberTestDTO updatemember(MemberTestDTO member, String pwchange) {

        String id = (String) RequestContextHolder.getRequestAttributes().getAttribute("memId", RequestAttributes.SCOPE_SESSION);

        member.setId(id);

        System.out.println("member.getPw() : " + member.getPw());
        System.out.println("pwchange : " + pwchange);
        System.out.println("member... " + member.toString());

        if (member.getPw().equals(pwchange)) {
            mapper.updatemember(member);
            //실행해서 담아준데이터가 가는게 아니라 중간에 세팅해준 dto 가 가서 출력되는중
            System.out.println("일치하지않는데 외 실행함 ㄷㄷ");
        } else {
            member.setGender(null);
            System.out.println("비밀번호 불일치!");
        }

        return member;
    }

    public int logoutmember() {

        int result = 0;
        RequestContextHolder.getRequestAttributes().removeAttribute("memId", RequestAttributes.SCOPE_SESSION);

        if (RequestContextHolder.getRequestAttributes().getAttribute("memId", RequestAttributes.SCOPE_SESSION) == null) {
            System.out.println("NULLLLLLLLLL");
            return 1;
        } else {
            System.out.println("NotNULLL");
            return 2;
        }
    }

    @Override
    public int deleteMember(String pw) {
        String id = (String)RequestContextHolder.getRequestAttributes().getAttribute("memId",RequestAttributes.SCOPE_SESSION);

        MemberTestDTO member = new MemberTestDTO();
        member.setId(id);
        member.setPw(pw);
        mapper.deleteMember(member);

        logoutmember();

        return 0;
    }

    @Override
    public int deleteMemberChk(String pw) {
        String id = (String)RequestContextHolder.getRequestAttributes().getAttribute("memId",RequestAttributes.SCOPE_SESSION);

        MemberTestDTO member = new MemberTestDTO();
        member.setId(id);
        member.setPw(pw);
        int result = mapper.idpwChk(member);
        return result;
    }
}
