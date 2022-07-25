package com.example.javado.domain;


import com.example.javado.util.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Table (name="users")
public class UserVO extends Timestamp {

    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;
    @Column
    private String pw;
    @Column
    private String name;

    //public void setName(String name){
     //   this.name=name;
    //}

    public UserVO(UserRequestDto userRequestDto){
        this.id=userRequestDto.getId();
        this.pw=userRequestDto.getPw();
        this.name=userRequestDto.getName();

    }
//
//    public void setName(String name){
//        this.name=name;
//
//    }

    //setter 를 쓰지 않고 requestDto 객체를 파라미터로 받는 update() 메소드 생성

    public void update(UserRequestDto userRequestDto){
        this.name=userRequestDto.getName();
    }
}
