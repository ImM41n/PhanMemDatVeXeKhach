//package com.java.banve.controller;
//
//
//import com.java.banve.entity.User;
//import com.java.banve.model.Location;
//import com.java.banve.model.SearchChuyenDTO;
//import com.java.banve.service.ChuyenService;
//import com.java.banve.service.RoleService;
//import com.java.banve.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.FieldError;
//import org.springframework.web.bind.annotation.*;
//
//import javax.validation.Valid;
//import java.text.ParseException;
//
//@Controller
//@CrossOrigin
//@RequestMapping("/")
//public class TrangChuController {
//    @Autowired
//    ChuyenService chuyenService;
//    //đón nhận request GET
//    @GetMapping("/")//nếu người dung tới dịa chi "/"
//    public String index(@ModelAttribute("user") Location location, ModelMap model, @ModelAttribute("message") String message){
//        model.addAttribute("diemdi",location.getBinhDinh());
//        model.addAttribute("diemden",location.getSaiGon());
//
//        return  "trangchu";//trar veef file trangchu.html
//    }
//
//    @GetMapping("/about")
//    public String about(){
//        return "about";//trar veef file about.html
//    }
//    @PostMapping("/timkiem")
//    public String timChuyen(@ModelAttribute("searchChuyenDTO") SearchChuyenDTO searchChuyenDTO, ModelMap modelMap) throws ParseException {
//        if (searchChuyenDTO.getDiemDi().equals(searchChuyenDTO.getDiemDen())) {
//            modelMap.addAttribute("message", "Điểm đến và điểm đi phải khác nhau");
//            modelMap.addAttribute("location", new Location());
//            modelMap.addAttribute("searchChuyenDTO", new SearchChuyenDTO());
//            return "trangchu";
//        }
//        modelMap.addAttribute("listChuyenDTO", this.chuyenService.listSearchChuyenDTO(searchChuyenDTO.getDiemDi(), searchChuyenDTO.getDiemDen(), searchChuyenDTO.getNgay()));
//        return "timkiem";
//    }
//
//    @GetMapping("/hello")
//    public String hello(
//            // Request param "name" sẽ được gán giá trị vào biến String
//            @RequestParam(name = "name", required = false, defaultValue = "") String name,
//            // Model là một object của Spring Boot, được gắn vào trong mọi request.
//            Model model
//    ) {
//        // Gắn vào model giá trị name nhận được
//        model.addAttribute("name", name);
//
//        return "hello"; // trả về file hello.html cùng với thông tin trong object Model
//    }
//
//    @GetMapping("/lichtrinh")
//    public  String lichtrinh(){
//        return "lichtrinh";
//    }
//
//}
