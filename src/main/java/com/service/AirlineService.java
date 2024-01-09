package com.service;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.config.HiberConfig;
import com.model.Airlines;
import com.model.Airports;

public class AirlineService {

	private SessionFactory sf=null;
	
		public AirlineService()
		{
			sf = HiberConfig.getSessionFactory();
		}
		
		public void AddArln(Airlines arln)
		{
			Session session = sf.openSession();
			Transaction trans  = session.beginTransaction();
			session.save(arln);
			trans.commit();
		}
//		public List<Airlines> ShowAllArlnsBaseOnArpt(int apno)
////		public List<Airlines> ShowAllArln()
//		{
//			Session session = sf.openSession();
//			TypedQuery qry = session.createQuery("from Airlines where apno=:apno");
//			qry.setParameter("apno", apno);
//			//qry.setParameter("apno", 0);
//			List<Airlines> arlnall = qry.getResultList();
//			return arlnall;
//		}
		public List<Airlines> ShowAllArlns()
		{
			Session session = sf.openSession();
			TypedQuery qry = session.createQuery("from Airlines");
			List<Airlines> arlnall = qry.getResultList();
			return arlnall;
		}
}
