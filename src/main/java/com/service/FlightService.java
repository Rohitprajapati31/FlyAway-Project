package com.service;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.config.HiberConfig;
import com.model.Airlines;
import com.model.Flights;

public class FlightService {

	private SessionFactory sf=null;
	
	public FlightService()
	{
		sf = HiberConfig.getSessionFactory();
	}
	
	public void AddFlts(Flights flts)
	{
		Session session = sf.openSession();
		Transaction trans = session.beginTransaction();
		session.save(flts);
		trans.commit();
	}
	
	public List<Flights> ShowAllFlts()
	{
		Session session = sf.openSession();
		TypedQuery qry = session.createQuery("from Flights");
		List<Flights> fall = qry.getResultList();
		return fall;
	}
	
	public List<Flights> searchFlights(String src, String dest)
	{
		Session session = sf.openSession();
		TypedQuery qry = session.createQuery("from Flights where source=:sid AND destination=:did");
		qry.setParameter("sid", src);
		qry.setParameter("did", dest);
	    List<Flights> call = qry.getResultList();
	    if(call.isEmpty())
	    	return null;
	    
	    return call;
	}
}
