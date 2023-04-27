package com.icia.exam.Controller;

import com.icia.exam.DTO.ExamDTO;
import com.icia.exam.Service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ExamController {
    @Autowired
    private ExamService examService;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("save")
    public String saveform(){
        return "save";
    }
    @PostMapping("save")
    public String save(@ModelAttribute ExamDTO examDTO, Model model){
        boolean result = examService.save(examDTO);
                if(result){
                    return "redirect:/list";
                }else{
                    return "errorPage";
                }


//        model.addAttribute("result",saveResult);
//        return "redirect:/list";
    }
    @GetMapping("/list")
    public String findAll(Model model){
        List<ExamDTO> examDTOList = examService.findAll();
        model.addAttribute("examList",examDTOList);
        return "list";
    }
    @GetMapping("/detail")
    public String findById(@RequestParam("custno") Long custno, Model model){
        ExamDTO examDTO = examService.findById(custno);
        model.addAttribute("exam",examDTO);
        return "update";
    }
    @GetMapping("/update")
    public String updateForm(@RequestParam("custno") Long custno, Model model) {
        ExamDTO examDTO = examService.findById(custno);
        model.addAttribute("exam",examDTO);
        return "list";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute ExamDTO examDTO) {
        examService.update(examDTO);
        return "redirect:/detail?custno="+examDTO.getCustno();
    }



    }

