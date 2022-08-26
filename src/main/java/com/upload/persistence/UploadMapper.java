package com.upload.persistence;

import com.memberTest.domain.Criteria;
import com.upload.domain.FileVO;

import java.util.List;

public interface UploadMapper {

    public int insert(FileVO fileVO);

    public List<FileVO> getAll();

}
