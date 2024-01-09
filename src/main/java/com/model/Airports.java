package com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Airports")
public class Airports {
	
	@Id
	@GeneratedValue
	private int a_code;
	private String a_name;
	private String city;
	private String country;
	
	@OneToMany(targetEntity=Airlines.class, cascade=CascadeType.ALL)
	@JoinColumn(name="a_code")
	private List<Airlines> arln;
	
	public List<Airlines> getArln(){
		return arln;
	}
//	private List<Flights> flts;
//	
//	public List<Flights> getFlts(){
//		return flts;
//	}
	
	public int getA_code() {
		return a_code;
	}
	public void setA_code(int a_code) {
		this.a_code = a_code;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
}
