package com.config;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.model.Airlines;
import com.model.Airports;
import com.model.Flights;
import com.model.Passenger;

public class HiberConfig {

	private static SessionFactory sessionFactory;
	
	
		public static SessionFactory getSessionFactory() 
		{
			System.out.println("\nsessionFactory [1]: " + sessionFactory);
			if (sessionFactory == null) 
			{
				try
				{
					Configuration  cfg = new Configuration();
					Properties settings = new Properties();
					
					settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
					settings.put(Environment.URL, "jdbc:mysql://localhost:3306/flyaway?useSSL=false");
					settings.put(Environment.USER, "root");
					settings.put(Environment.PASS, "Rohit@123#");
					settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
					settings.put(Environment.SHOW_SQL, "true");
					settings.put(Environment.HBM2DDL_AUTO, "update");
					
					cfg.setProperties(settings);
					
					cfg.addAnnotatedClass(Airports.class);
					cfg.addAnnotatedClass(Airlines.class);
					cfg.addAnnotatedClass(Flights.class);
					cfg.addAnnotatedClass(Passenger.class);
					
					ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
							.applySettings(cfg.getProperties()).build();
					
					System.out.println("Hibernate Java Config serviceRegistry created");
					sessionFactory = (SessionFactory) cfg.buildSessionFactory(serviceRegistry);
					
//					Configuration configuration = new Configuration();
//					configuration.configure("hibernate.cfg.xml"); // Load configuration from XML file
//					SessionFactory sessionFactory = configuration.buildSessionFactory();

				}
				catch(Exception ex)
				{
					ex.printStackTrace();
				}
				System.out.println("\nsessionFactory [2]: " + sessionFactory);
			}
			return sessionFactory;
		}
}
