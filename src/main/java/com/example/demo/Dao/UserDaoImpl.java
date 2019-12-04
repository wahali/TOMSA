package com.example.demo.Dao;

import com.example.demo.bean.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;

public class UserDaoImpl implements UserDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public boolean addUser(User user) throws DaoException {
        String sql = "insert into user()";
        return true;

    }


    public User findById(int id) throws DaoException {
        return null;
    }

    public ArrayList<User> findAllUser() throws DaoException {
        return null;
    }

}
