package com.security.service;

import com.security.domain.MemberVO;
import com.security.persistence.SecurityMapper;
import com.security.service.domain.CustomUser;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private SecurityMapper mapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        MemberVO memberVO = mapper.getMember(username);
        return memberVO==null ? null : new CustomUser(memberVO);
    }
}
