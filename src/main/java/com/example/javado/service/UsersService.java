package com.example.javado.service;

import com.example.javado.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UsersService {


    @Autowired
    private UsersRepository usersRepository;


    //getUser join
        public UserVO readUsers(UserDto userDto){
            boolean checkDupl;
            //중복 아이디가 있는지 확인 있으면 true/ 없으면false
            checkDupl = usersRepository.existsById(userDto.getId());
            if(!checkDupl){
                UserVO checkId=usersRepository.findById(userDto.getId()).orElse(null);
                if(checkId!=null){
                    return checkId;
                }
            }
            return null;
        }
    //getUser login
    public UserVO getUser(UserDto userDto){
        boolean checkDupl;
        checkDupl = usersRepository.existsById(userDto.getId());
        if(checkDupl){
            UserVO checkId=usersRepository.findById(userDto.getId()).orElse(null);
            return checkId;
        }
        return null;
    }
    //join
        public UserVO joinUser(UserDto userDto){
            UserVO user=new UserVO(userDto);
            return usersRepository.save(user);
        }


}
