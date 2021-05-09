package demo.boat.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import demo.service.BillGenerate;

/**
 * Servlet implementation class BillServlet
 */
public class BillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BillGenerate bg=new BillGenerate();
		int boatid=Integer.parseInt(request.getParameter("boatId"));
		int time=Integer.parseInt(request.getParameter("Time"));
		int loadCap=Integer.parseInt(request.getParameter("LoadCapacity"));
		boolean result=bg.createBill(time,loadCap,boatid);
		System.out.println(result);
		HttpSession session=request.getSession();  
        
		if(result==true) {
			
			session.setAttribute("boatId",boatid); 
			response.sendRedirect("jsp/genreatebill.jsp");
		}
		else {
			response.sendRedirect("jsp/billerror.jsp");
		}
	}

}
