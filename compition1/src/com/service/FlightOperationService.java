package com.service;

import java.util.ArrayList;


import com.dto.FlightOpeartion;



public interface FlightOperationService {
	int insertFlight(FlightOpeartion flightOpeartion);
	int deleteFlight(int flightno);
	int updateFlight(FlightOpeartion flightOpeartion);
	ArrayList<FlightOpeartion> selectAll(String to,String from);
	ArrayList<FlightOpeartion> viewAll();
	FlightOpeartion findFlight(int flightno);
}
