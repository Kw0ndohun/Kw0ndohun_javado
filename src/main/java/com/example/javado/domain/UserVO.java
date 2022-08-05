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
@Table (name="users")
public class UserVO {

    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pw")
    private String pw;
    @Column(name = "name")
    private String name;


    @Id
    private String id;
    @Column(name = "clear")
    private String clear;

    public UserVO(UserDto userDto){
        this.id=userDto.getId();
        this.pw=userDto.getPw();
        this.name=userDto.getName();
        this.clear=userDto.getClear();
    }


    //setter 를 쓰지 않고 requestDto 객체를 파라미터로 받는 update() 메소드 생성

    public void update(UserVO userVO){
        this.name=userVO.getName();
    }
}
