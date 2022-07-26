package com.example.javado.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class runController {

    @PostMapping("/run")
    public void runContainer(@RequestParam(name="status") String status){
        if(status.equals("while")){

        }
    }
}
