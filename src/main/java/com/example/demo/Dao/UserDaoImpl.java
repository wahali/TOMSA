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
    @Autowired
    JdbcTemplate jdbcTemplate;
    public boolean addUser(User user) throws DaoException {
        String sql = "insert into user()";
        return true;
    }
    public boolean find_user(User user)throws DaoException{
        String sql = "select count(*) from user where uname = ?";
        String res =  jdbcTemplate.queryForObject(sql,new Object[]{user.getUname()},String.class);
        if(res.equals("0"))return false;
        else return true;
    }
    public String find_role(User user)throws  DaoException{
        String sql = "select r_name from role where r_id = (select r_id from user where uname = ?)";
        String role = jdbcTemplate.queryForObject(sql,new Object[]{user.getUname()},String.class);
        return role;
    }
    public boolean checkPassword(String username,String password)throws DaoException{
        String sql = "select count(*) from user where uname = ? and upassword = ? ";
        String res = jdbcTemplate.queryForObject(sql,new Object[]{username,password},String.class);
        if(res!=null&&res.equals("0"))return false;
        else return true;
    }
    public boolean findUserByUsername(String username)throws  DaoException{
        String sql = "select count(*) from user where uname = ?";
        String res = (String) jdbcTemplate.queryForObject(sql,new Object[]{username},String.class);
        if(res != null&&res.equals("0"))return false;
        else return true;
    }
    public ArrayList<User> findAllUser() throws DaoException {
        return null;
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

}
