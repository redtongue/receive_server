package database;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class MySessionFactory {
	private static Configuration config;
	private static SessionFactory factory;
	static{
		config = new Configuration();
		config.configure("hibernate.cfg.xml");
		
		ServiceRegistryBuilder builder = new ServiceRegistryBuilder();
		builder.applySettings(config.getProperties());
		ServiceRegistry serviceRegistry = builder.buildServiceRegistry();
		factory = config.buildSessionFactory(serviceRegistry);
	}
	public static Session getSession(){
		Session session = factory.getCurrentSession();
		return session;
	}
}
