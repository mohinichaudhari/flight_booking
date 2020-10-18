package com.dto;

public class Admin {
	private String name;
	private String password;
	public Admin() {
	}
	public String getName() {
		//System.out.println("getname");
		return name;
	}
	public void setName(String name) {
		//System.out.println("Setname");
		this.name = name;
	}
	public String getPassword() {
		//System.out.println("getpsd");
		return password;
	}
	public void setPassword(String password) {
		//System.out.println("setname");
		this.password = password;
	}
	
	
}
