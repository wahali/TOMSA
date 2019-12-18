package com.example.demo.Dao;

import com.example.demo.bean.User;
import com.example.demo.bean.UserrowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository

public class UserDaoImpl implements UserDao {
    public UserDaoImpl(){}
    @Autowired
    JdbcTemplate jdbcTemplate;
    public boolean addUser(User user) throws DaoException {
        String sql = "insert into user(uid,uname,upassword) values(0,?,?);";
        try{
            jdbcTemplate.update(sql,user.getUname(),user.getUpassword());
        }catch (EmptyResultDataAccessException e) {
            return false;
        }
        return true;
    }
    @Override
    public User findByUsername(String uname)throws  EmptyResultDataAccessException{
        try{
            User user = jdbcTemplate.queryForObject("SELECT * FROM user WHERE uname=?", new Object[]{uname}, new UserrowMapper());
            return user;
        }catch (EmptyResultDataAccessException e){
            return null;
        }
    }
    @Override
    public User findById(int uid)
    {
        return jdbcTemplate.queryForObject("SELECT * FROM user WHERE uid=?", new Object[]{uid}, new UserrowMapper());
    }
    public void UpdateById(int uid,User user){
        jdbcTemplate.update("update user set /*uname=? and*/ upassword = ? where uid = ?",new Object[]{/*user.getUname(),*/user.getUpassword(),uid});
    }
}
