package com.service;

import java.util.ArrayList;

import com.dao.FlightOperationDao;
import com.dao.FlightOperationDaoImple;
import com.dto.FlightOpeartion;

public class FlightOperationServiceImple implements FlightOperationService{
	private FlightOperationDao flightOpearationDao;
	
	

	public FlightOperationServiceImple() {
		flightOpearationDao = new FlightOperationDaoImple();
	}

	@Override
	public int insertFlight(FlightOpeartion flightOpeartion) {
		return flightOpearationDao.insertFlight(flightOpeartion);
	}

	@Override
	public int deleteFlight(int flightno) {
		return flightOpearationDao.deleteFlight(flightno);
	}

	@Override
	public int updateFlight(FlightOpeartion flightOpeartion) {
		return flightOpearationDao.updateFlight(flightOpeartion);
	}
	

	@Override
	public ArrayList<FlightOpeartion> selectAll(String to, String from) {
		return flightOpearationDao.selectAll(to, from);
	}

	@Override
	public FlightOpeartion findFlight(int flightno) {
		return flightOpearationDao.getFlight(flightno);
	}

	@Override
	public ArrayList<FlightOpeartion> viewAll() {
		
		return flightOpearationDao.viewAll();
	}
}
