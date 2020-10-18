package com.service;


import com.dao.AdminDao;
import com.dao.AdminDaoImple;
import com.dto.Admin;

public class AdminServiceImple implements AdminService{

	private AdminDao adminDao;
	
	public AdminServiceImple() {
		adminDao = new AdminDaoImple();
	}

	@Override
	public boolean AdminLogin(Admin admin) {
		return adminDao.login(admin);
	}

}
