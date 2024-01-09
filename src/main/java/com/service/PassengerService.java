package com.service;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.config.HiberConfig;
import com.model.Passenger;

public class PassengerService {

	private SessionFactory sf=null;
	
	public PassengerService()
	{
		sf = HiberConfig.getSessionFactory();
	}
	
	public void AddPassenger(Passenger psgr)
	{
		Session session = sf.openSession();
		Transaction trans  = session.beginTransaction();
		session.save(psgr);
		trans.commit();
	}
	
	public List<Passenger> ShowAllpsgr()
	{
		Session session = sf.openSession();
		TypedQuery qry = session.createQuery("from Passenger");
		List<Passenger> psall = qry.getResultList();
		return psall;
	}
}
