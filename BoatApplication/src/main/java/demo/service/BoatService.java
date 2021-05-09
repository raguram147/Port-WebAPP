package demo.service;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import demo.hibernate.util.HibernateUtil;
import demo.model.Boat;


public class BoatService {
	static Session session;
	
	public boolean checkBoat(int boatId) {
		// TODO Auto-generated method stub
		Boat boat=getBoatbyBoatId(boatId);
		if(boat==null)
		{
			return true;
		}
		else {
		return false;
		}
	}
	public static Boat getBoatbyBoatId(int boatId) {
		// TODO Auto-generated method stub
		Boat boat=null;
		session = HibernateUtil.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            boat=(Boat) session.get(Boat.class,boatId );
            
            tx.commit();
        } catch (Exception e) {
            
            e.printStackTrace();
        } finally {
            session.close();
        }
        System.out.println(boat);
        return boat;
	}

	public boolean insertBoat(int boatId, String boatName, int boatCapacity) {
		// TODO Auto-generated method stub
		if(checkBoat(boatId)==true){
			session = HibernateUtil.openSession();
			Transaction trans =  session.beginTransaction();
			Boat boat = new Boat(boatId,boatCapacity,  boatName);
			session.save(boat);
			trans.commit();
			session.close();
			return true;
			
		}
		else {
			
			return false;
		}

	}
	
	public boolean updateBoat(int boatId, String boatName, int boatCapacity) {
		// TODO Auto-generated method stub
		if(checkBoat(boatId)==false){
			session = HibernateUtil.openSession();
			Transaction trans =  session.beginTransaction();
			Boat boat = new Boat(boatId, boatCapacity, boatName);
			session.update(boat);
			trans.commit();
			session.close();
			return true;
			
		}
		else {
			
			return false;
		}
	}
		public boolean deleteBoat(int boatId) {
			// TODO Auto-generated method stub
			if(checkBoat(boatId)==false){
				session = HibernateUtil.openSession();
				Transaction trans =  session.beginTransaction();
				Boat boat = new Boat( boatId);
				session.delete(boat);
				trans.commit();
				session.close();
				return true;
				
			}
			else {
				
				return false;
			}

	}
	
		
	@SuppressWarnings("unchecked")
	public List<Boat> getListOfBoats(){
//        List<User> list = new ArrayList<User>();
		List<Boat> boat = new ArrayList<Boat>();
		Session session = HibernateUtil.openSession();
        Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            boat = session.createQuery("from Boat").list();                       
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return boat;
    }
		}
