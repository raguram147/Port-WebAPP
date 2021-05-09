package demo.hibernate.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import demo.model.Bill;
import demo.model.Boat;
import demo.model.User;

public class HibernateUtil {
	static SessionFactory sessionfactory;
	static Session session;
 
    static {
        try {
        	
        	sessionfactory = new Configuration().configure().addAnnotatedClass(User.class).addAnnotatedClass(Boat.class).addAnnotatedClass(Bill.class).buildSessionFactory();
    		System.out.println("session is created....");
    		
    		} catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
 
    public static Session openSession() {
        return sessionfactory.openSession();
    }

}
