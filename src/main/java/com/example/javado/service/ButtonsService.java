package com.example.javado.service;

import com.example.javado.domain.ButtonsDto;
import com.example.javado.domain.ButtonsRepository;
import com.example.javado.domain.ButtonsVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class ButtonsService {


    @Autowired
    private ButtonsRepository buttonsRepository;


    //Read
        public ButtonsVO readButtons(){
//            ButtonsVO result = buttonsRepository.findById("int").orElseThrow(
//                    () -> new IllegalArgumentException("존재하지 않는 이름입니다.")
//
//            );
            list<ButtonsVO> result = buttonsRepository.findAll();
            return null;
        }


}
