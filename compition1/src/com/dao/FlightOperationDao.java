package com.dao;

import java.util.ArrayList;
import com.dto.FlightOpeartion;



public interface FlightOperationDao {
	int insertFlight(FlightOpeartion flightOpeartion);
	int deleteFlight(int flightno);
	int updateFlight(FlightOpeartion flightOpeartion);
	ArrayList<FlightOpeartion> selectAll(String to,String from);
	ArrayList<FlightOpeartion> viewAll();
	FlightOpeartion getFlight(int flightno);
}
