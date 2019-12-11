package com.example.demo.controller;


import com.example.demo.Dao.UserDaoImpl;
import com.example.demo.bean.College;
import com.example.demo.bean.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    private UserDaoImpl userDaoImpl;
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String index() {

//        String sql = "SELECT * FROM user WHERE uid = ? ";
        // 通过jdbcTemplate查询数据库
//        User mobile = (User) jdbcTemplate.queryForObject(
//                sql, new Object[] {1}, User.class);
        User mobile = userDaoImpl.findById(1);
        return "Hello " + mobile;
//        return "hello";
    }
}

