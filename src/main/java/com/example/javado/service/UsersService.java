package com.example.javado.service;

import com.example.javado.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
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
    public UserVO getUser(String log){
        boolean checkDupl;
        checkDupl = usersRepository.existsById(log);
        if(checkDupl){
            UserVO checkId=usersRepository.findById(log).orElse(null);
            return checkId;
        }
        return null;
    }
    //join
        public UserVO joinUser(UserDto userDto){
            UserVO user=new UserVO(userDto);
            return usersRepository.save(user);
        }

    //update clearStep
        @Transactional //조회된 기존 객체를 업데이트 해준다
        public void updateUser(UserDto userDto){
            UserVO user = usersRepository.findById(userDto.getId()).orElseThrow(
                    ()-> new IllegalArgumentException("존재하지 않는 아이디입니다.")
            );
            user.update(userDto);
        }
}
