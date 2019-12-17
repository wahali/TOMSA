package com.example.demo.Dao;

import com.example.demo.bean.User;

import java.util.ArrayList;
import java.util.List;

public interface UserDao extends Dao {
    //添加user的方法
    public boolean addUser(User user) throws DaoException;
    public User findById(int uid);
    public User findByUsername(String username);
    public void UpdateById(int uid,User user);

}
