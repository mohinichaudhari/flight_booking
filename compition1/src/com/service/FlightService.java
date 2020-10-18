package com.service;

import java.util.ArrayList;

import com.dto.FlightOpeartion;

public interface FlightService {
	
	ArrayList<FlightOpeartion> selectAll(FlightOpeartion fd);

}
