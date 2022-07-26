package com.example.javado.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ButtonsRepository extends JpaRepository<ButtonsVO, String> {
    //jpa: java <> Database 간의 자동 번역기 역할을 수행

}
