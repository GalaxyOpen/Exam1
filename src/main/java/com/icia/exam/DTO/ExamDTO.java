package com.icia.exam.DTO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ExamDTO {
    private Long custno;
    private String custname;
    private String phone;
    private String address;
    private String joindate;
    private String grade;
    private String city;

}
