package com.example.javado.controller;


import com.example.javado.domain.ButtonsVO;
import com.example.javado.domain.UserDto;
import com.example.javado.domain.UserVO;
import com.example.javado.service.ButtonsService;
import com.example.javado.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
public class userController {

    @Autowired
    private UsersService usersService;

    @GetMapping("/v1/search/users")
    public UserVO getUsers(@RequestBody UserDto userDto) {
        UserVO user=usersService.readUsers(userDto);
        return user;
    }

    @PostMapping("/v1/join/user")
    public boolean joinUser(@RequestBody UserDto userDto) {
        //중복아이디가 없으면 null
        UserVO duplCheckId= getUsers(userDto);
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
}

