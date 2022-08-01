package com.example.javado.service;

import com.example.javado.domain.ButtonsDto;
import com.example.javado.domain.ButtonsRepository;
import com.example.javado.domain.ButtonsVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
public class ButtonsService {


    @Autowired
    private ButtonsRepository buttonsRepository;


    //Read
        public ArrayList<ButtonsVO> readButtons(){
//            ButtonsVO result = buttonsRepository.findById("int").orElseThrow(
//                    () -> new IllegalArgumentException("존재하지 않는 이름입니다.")
//
//            );
            List<ButtonsVO> result = buttonsRepository.findAll();
            ArrayList<ButtonsVO> buttonsList =new ArrayList<ButtonsVO>();
            buttonsList.addAll(result);
            return buttonsList;
        }


}
