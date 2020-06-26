package com.zdf.dao;

import java.util.List;

import com.zdf.entity.Users;
 
public interface UsersDao {
	public int addUser(Users u);
	public int delUser(int id);
	public int updateUser(Users u);
	public Users findUserById(int id);
	public List<Users> getAllUsers();

}