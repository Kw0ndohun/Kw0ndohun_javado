package com.example.javado.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// 뷰페이지에서 요청이 들어오면 요청에 대한 처리 로직을 어디로 가야할지 방향을 잡아주는 어노테이션이다. 어노테이션 이하가 실행됨.
@Controller
public class mainController {

    @RequestMapping("/" )//, method= RequestMethod.GET())
    public String index(){
//        return "index.html";
        return "index";
    }
    @RequestMapping("/main" )
    public String main(){

        return "main";
    }

    @RequestMapping("/main2" )
    public String main2(){

        return "main2";
    }


}
