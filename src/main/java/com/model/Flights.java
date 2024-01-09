package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Flights")
public class Flights {

	@Id
	@GeneratedValue
	private int Flight_Id;
	private String Flight_Name;
	private String Airline_Name;
	private String source;
	private String destination;
	private int price;
	private int seats;
	private int a_code;
	
	public int getA_code() {
		return a_code;
	}
	public void setA_code(int a_code) {
		this.a_code = a_code;
	}
	public int getFlight_Id() {
		return Flight_Id;
	}
	public void setFlight_Id(int flight_Id) {
		Flight_Id = flight_Id;
	}
	public String getFlight_Name() {
		return Flight_Name;
	}
	public void setFlight_Name(String flight_Name) {
		Flight_Name = flight_Name;
	}
	public String getAirline_Name() {
		return Airline_Name;
	}
	public void setAirline_Name(String airline_Name) {
		Airline_Name = airline_Name;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}	
		
}
