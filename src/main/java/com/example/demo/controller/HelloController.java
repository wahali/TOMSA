package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String index() {
//
//        String sql = "SELECT * FROM course WHERE couid = ? and couintro = ?";
//
//        // 通过jdbcTemplate查询数据库
//        String mobile = (String)jdbcTemplate.queryForObject(
//                sql, new Object[] {1,"代码满天飞"}, String.class);

//        return "Hello " + mobile;
        return "hello";
    }
}

