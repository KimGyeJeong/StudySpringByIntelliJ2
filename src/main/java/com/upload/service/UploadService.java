package com.upload.service;

import com.memberTest.domain.Criteria;
import com.upload.domain.FileVO;

import java.util.List;

public interface UploadService {

    public int insert(FileVO fileVO);

    public List<FileVO> getAll();
}
