package demo.service;

import org.hibernate.Session;
import org.hibernate.Transaction;
import demo.hibernate.util.HibernateUtil;
import demo.model.User;
 
public class LoginService {
 
    public boolean authenticateUser(String AdminId, String password) {
        User admin = getAdminbyAdminId(AdminId);         
        if(admin!=null && admin.getAdminId().equals(AdminId) && admin.getAdminPass().equals(password)){
            return true;
        }else{
            return false;
        }
    }
 
    public User getAdminbyAdminId(String AdminId) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        User admin = null;
        try {
            tx = session.beginTransaction();
            
            admin =(User) session.get(User.class,AdminId );
            tx.commit();
        } catch (Exception e) {
            
            e.printStackTrace();
        } finally {
            session.close();
        }
        return admin;
    }
}
