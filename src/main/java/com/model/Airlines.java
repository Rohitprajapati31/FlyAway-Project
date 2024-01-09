package com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="Airlines")
public class Airlines {

	@Id
	@GeneratedValue
	private int code;
	private String name;
	private int a_code;
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="a_code")
	
	private List<Flights> flts;
	
	public List<Flights> getFlts(){
		return flts;
	}
	public int getA_code() {
		return a_code;
	}
	public void setA_code(int a_code) {
		this.a_code = a_code;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
