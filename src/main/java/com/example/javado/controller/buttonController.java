package com.example.javado.controller;


import com.example.javado.domain.ButtonsDto;
import com.example.javado.domain.ButtonsVO;
import com.example.javado.service.ButtonsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
public class buttonController {

    @Autowired
    private ButtonsService buttonsService;

    @GetMapping("/v1/search/buttons")
    public ArrayList<ButtonsVO> getButtons() {
        ArrayList<ButtonsVO> buttons=buttonsService.readButtons();
        return buttons;
    }
}

