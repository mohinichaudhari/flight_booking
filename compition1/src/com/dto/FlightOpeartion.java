package com.dto;

import java.sql.Date;

public class FlightOpeartion {
	private String flightno;
	private String to;
	private String from;
	private String date;
	private String time;
	private int noOfSeat;
	private int bookedSeat;
	private float amount;
	public FlightOpeartion() {
		
	}
	public String getFlightno() {
		return flightno;
	}
	public void setFlightno(String flightno) {
		this.flightno = flightno;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getNoOfSeat() {
		return noOfSeat;
	}
	public void setNoOfSeat(int noOfSeat) {
		this.noOfSeat = noOfSeat;
	}
	public int getBookedSeat() {
		return bookedSeat;
	}
	public void setBookedSeat(int bookedSeat) {
		this.bookedSeat = bookedSeat;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "FlightOpeartion [flightno=" + flightno + ", to=" + to + ", from=" + from + ", date=" + date + ", time="
				+ time + ", noOfSeat=" + noOfSeat + ", bookedSeat=" + bookedSeat + ", amount=" + amount + "]";
	}
	
	
}
