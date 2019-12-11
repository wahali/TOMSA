package com.example.demo.Dao;

import com.example.demo.bean.User;

import java.util.ArrayList;

public interface UserDao extends Dao {
    //添加user的方法
    public boolean addUser(User user) throws DaoException;
    public boolean find_user(User user)throws DaoException;
    public boolean findUserByUsername(String username)throws  DaoException;
    public boolean checkPassword(String username,String password)throws DaoException;
    public String find_role(User user)throws  DaoException;
    public User findById(int uid);
    public User findByUsername(String username);
    public ArrayList<User> findAllUser() throws DaoException;
}
