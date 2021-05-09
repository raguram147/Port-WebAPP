package demo.service;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import demo.hibernate.util.HibernateUtil;
import demo.model.Bill;


public class BillGenerate {
	static Session session;
	static BoatService bs=new BoatService();
	public boolean createBill(int time, int loadCap,int boatId) {
		// TODO Auto-generated method stub
		if(bs.checkBoat(boatId)==false){
			session = HibernateUtil.openSession();
			Transaction trans =  session.beginTransaction();
			double amount=calAmount(time, loadCap);
			System.out.println(amount);
			Bill bill=new Bill( amount, loadCap, time);
			session.save(bill);
			trans.commit();
			session.close();
			return true;
		}
		else {
				return false;
			}

		}
	public static double calAmount(int time, int loadCap) {
		// TODO Auto-generated method stub
		return((time*100)*loadCap);
	}
	private static List<Bill> bill = null;
	@SuppressWarnings("unchecked")
	public static List<Bill> getListOfBill(int boatId){
		
		if(bs.checkBoat(boatId)==false){
			Session session = HibernateUtil.openSession();
	        Transaction tx = null;       
	        try {
	            tx = session.getTransaction();
	            tx.begin();
	            Query q = session.createQuery("from Bill");
	            bill = q.list();
	         
	            tx.commit();
	        } catch (Exception e) {
	            if (tx != null) {
	                tx.rollback();
	            }
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
		}
		return bill;
	}
	
	public static Bill  getBill(int boatId) {
		Bill bill = null;
		int id = getListOfBill(boatId).size();
		Session session = HibernateUtil.openSession();
        Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
           bill = (Bill) session.get(Bill.class, id);
            
         
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
		
		return bill;
	}
	
}