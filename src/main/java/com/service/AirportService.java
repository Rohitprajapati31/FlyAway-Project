package com.service;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.config.HiberConfig;
import com.model.Airports;

public class AirportService {

	private SessionFactory sf=null;
	
	public AirportService()
	{
		sf = HiberConfig.getSessionFactory();
	}
	
	public void AddAirport(Airports arpt)
	{
		Session session = sf.openSession();
		Transaction trans  = session.beginTransaction();
		session.save(arpt);
		trans.commit();
	}
	
	public List<Airports> ShowAllArpt()
	{
		Session session = sf.openSession();
		TypedQuery qry = session.createQuery("from Airports");
		List<Airports> apall = qry.getResultList();
		return apall;
	}
}
