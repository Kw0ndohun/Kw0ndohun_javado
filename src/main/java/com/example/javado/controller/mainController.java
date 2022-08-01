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

    @RequestMapping("/main3" )
    public String main3(){

        return "main3";
    }
    @RequestMapping("/main4" )
    public String main4(){

        return "main4";
    }
    @RequestMapping("/main5" )
    public String main5(){

        return "main5";
    }
    @RequestMapping("/main6" )
    public String main6(){

        return "main6";
    }
    @RequestMapping("/main7" )
    public String main7(){

        return "main7";
    }
    @RequestMapping("/main8" )
    public String main8(){

        return "main8";
    }
    @RequestMapping("/main9" )
    public String main9(){

        return "main9";
    }
    @RequestMapping("/main10" )
    public String main10(){

        return "main10";
    }
    @RequestMapping("/main11" )
    public String main11(){

        return "main11";
    }
    @RequestMapping("/main12" )
    public String main12(){

        return "main12";
    }
    @RequestMapping("/main13" )
    public String main13(){

        return "main13";
    }
    @RequestMapping("/main14" )
    public String main14(){

        return "main14";
    }
    @RequestMapping("/main15" )
    public String main15(){

        return "main15";
    }
    @RequestMapping("/main16" )
    public String main16(){

        return "main16";
    }
    @RequestMapping("/main17" )
    public String main17(){

        return "main17";
    }
    @RequestMapping("/main18" )
    public String main18(){

        return "main18";
    }
    @RequestMapping("/main19" )
    public String main19(){

        return "main19";
    }
    @RequestMapping("/main20" )
    public String main20(){

        return "main20";
    }
}
