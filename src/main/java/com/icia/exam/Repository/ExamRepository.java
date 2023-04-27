package com.icia.exam.Repository;

import com.icia.exam.DTO.ExamDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ExamRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public List<ExamDTO> findAll() {
        return sql.selectList("Exam.findAll");
    }

    public boolean save(ExamDTO examDTO) {
        try {
            sql.insert("Exam.save", examDTO);
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }

    public ExamDTO findById(Long custno){
        return sql.selectOne("Exam.findById",custno);
    }

    public void update(ExamDTO examDTO) {
        sql.update("Exam.update", examDTO);
    }
}
