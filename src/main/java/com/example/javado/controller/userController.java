package com.example.javado.controller;


import com.example.javado.domain.ButtonsVO;
import com.example.javado.domain.UserDto;
import com.example.javado.domain.UserVO;
import com.example.javado.service.ButtonsService;
import com.example.javado.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
public class userController {

    @Autowired
    private UsersService usersService;

    @GetMapping("/v1/search/users")
    public UserVO getUsers(@RequestBody UserDto userDto) {
        UserVO user=usersService.readUsers(userDto);
        System.out.println(user);
        return user;
    }

    @PostMapping("/v1/join/user")
    public boolean joinUser(@RequestBody UserDto userDto) {
        //중복아이디가 없으면 null
        UserVO duplCheckId= getUsers(userDto);
        System.out.println(duplCheckId);
        if(duplCheckId==null){
            usersService.joinUser(userDto);
            return true;
        }
        return false;
    }
    @PostMapping("/v1/login/user")
    public String loginUser(@RequestBody UserDto userDto) {
        UserVO user=usersService.getUser(userDto);
        if(user!=null){
            if(userDto.getId().equals(user.getId()) && userDto.getPw().equals(user.getPw())){
                //로그에 사용할 아이디
                return user.getId();
            }
        }
        return "";
    }

    //유저 전체 반환
    @PostMapping("/v1/return/user")
    public String[] returnUser(@RequestBody UserDto userDto) {
        UserVO user=usersService.getUser(userDto);
        if(user!=null){
            String id=user.getId();
            String pw=user.getPw();
            String name=user.getName();
            String clear=user.getClear();
            String[] userData= {id,pw,name,clear};
            return userData;
        }
        return null;
    }

//        유저의 클리어 단계를 가져와줌
    @PostMapping("/v1/get/clear")
    public String[] getClearStep(@RequestBody UserDto userDto){
        UserVO user=usersService.getUser(userDto.getId());
        if(user!=null && user.getClear()!=null){
            if(!user.getClear().equals("")){
                String clearArray[]=user.getClear().split("/");
                return clearArray;
            }
            return null;
        }
        return null;
    }

    //유저 클리어단계 업데이트
    @PutMapping("/v1/update/user")
    public void updateUser(@RequestBody UserDto userDto){
        usersService.updateUser(userDto);
    }

}

