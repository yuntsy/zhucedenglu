package com.zdf.entity;

public class Users {
	 
	// 实体类的属性和表的字段名称一一对应
	private int id;
	private String name;
	private int pwd;
 
	public Users(int id, String name, int pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
 
	public Users() {
	}
 
	public int getId() {
		return id;
	}
 
	public void setId(int id) {
		this.id = id;
	}
 
	public String getName() {
		return name;
	}
 
	public void setName(String name) {
		this.name = name;
	}
 
	public int getPwd() {
		return pwd;
	}
 
	public void setAge(int pwd) {
		this.pwd = pwd;
	}
 
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", pwd=" + pwd + "]";
	}

}