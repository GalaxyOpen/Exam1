package com.icia.exam.Service;

import com.icia.exam.DTO.ExamDTO;
import com.icia.exam.Repository.ExamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ExamService {
    @Autowired
    private ExamRepository examRepository;
    public boolean save(ExamDTO examDTO){

        return examRepository.save(examDTO);
    }
    public List<ExamDTO> findAll() {
        List<ExamDTO> examDTOList = examRepository.findAll();
        return examDTOList;
    }
    public ExamDTO findById(Long custno){
        ExamDTO examDTO = examRepository.findById(custno);
        return examDTO;
    }
    public void update(ExamDTO examDTO) {
        examRepository.update(examDTO);
    }


}
