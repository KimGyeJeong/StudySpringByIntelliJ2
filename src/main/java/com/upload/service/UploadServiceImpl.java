package com.upload.service;

import com.upload.domain.FileVO;
import com.upload.persistence.UploadMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UploadServiceImpl implements UploadService{

    @Autowired
    private UploadMapper mapper;

    @Override
    public int insert(FileVO fileVO) {
        System.out.println("BEFORE MAPPER...");
        System.out.println(fileVO.getImg_OriginName());
        return mapper.insert(fileVO);
    }
}
