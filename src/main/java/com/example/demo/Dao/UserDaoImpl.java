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
    public boolean find_user(User user)throws DaoException{
        String sql = "select count(*) from user where uname = ?";
        int res =  jdbcTemplate.queryForObject(sql,new Object[]{user.getUname()},Integer.class);
        if(res == 0)return false;
        else return true;
    }
    public String find_role(User user)throws  DaoException{
        String sql = "select r_name from role where r_id = (select r_id from user where uname = ?)";
        String role = jdbcTemplate.queryForObject(sql,new Object[]{user.getUname()},String.class);
        return role;
    }
    public boolean check_password(User user)throws DaoException{
        String sql = "select count(*) from user where uname = ? and upassword = ? ";
        int res = jdbcTemplate.queryForObject(sql,new Object[]{user.getUname(),user.getUpassword()},Integer.class);
        if(res == 0)return false;
        else return true;
    }
    public User findById(int id) throws DaoException {
        return null;
    }

    public ArrayList<User> findAllUser() throws DaoException {
        return null;
    }

}
