package com.dao;

import java.util.ArrayList;


import com.dto.FlightOpeartion;

public interface FlightDao {
	ArrayList<FlightOpeartion> selectAll(FlightOpeartion fd);
}
