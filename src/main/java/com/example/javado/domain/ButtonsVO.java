package com.example.javado.domain;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Table (name="buttons")
public class ButtonsVO {

    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "class")
    private String class_;
    @Column(name = "value")
    private String value;
    @Column(name = "content")
    private String content;
    @Id
    private String name;

    public ButtonsVO(ButtonsDto buttonsDto){
        this.class_=buttonsDto.getClass_();
        this.value=buttonsDto.getValue();
        this.content=buttonsDto.getContent();
        this.name=buttonsDto.getName();
    }
//    public ButtonsVO(String class_,String value, String content, String name){
//        this.class_=class_;
//        this.value=value;
//        this.content=content;
//        this.name=name;
//    }

    //setter 를 쓰지 않고 requestDto 객체를 파라미터로 받는 update() 메소드 생성

    public void update(ButtonsVO buttonsVo){
        this.name=buttonsVo.getName();
    }
}
