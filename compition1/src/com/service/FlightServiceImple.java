package com.service;

import java.util.ArrayList;

import com.dao.FlightDao;
import com.dao.FlightDaoImple;
import com.dto.FlightOpeartion;

public class FlightServiceImple implements FlightService{

	FlightDao flightDao;
	
	public FlightServiceImple() {
		flightDao = new FlightDaoImple();
	}


	@Override
	public ArrayList<FlightOpeartion> selectAll(FlightOpeartion fd) {
		return flightDao.selectAll(fd);
	}	
}
