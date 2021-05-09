package demo.boat.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.service.BoatService;

/**
 * Servlet implementation class BoatServlet
 */
public class BoatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoatServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoatService boatService = new BoatService();
		 int boatId = Integer.parseInt(request.getParameter("boatId"));   
	     String boatName = request.getParameter("Boatname");
	     
	     String choice=request.getParameter("choice");
	     boolean result;
		switch(choice){
		case "add":
			 int boatCapacity=Integer.parseInt(request.getParameter("BoatCapacity"));
		     result = boatService.insertBoat(boatId,boatName,boatCapacity);
		     if(result == true){
		         response.sendRedirect("jsp/addboat.jsp");
		     }
		     else{
		         response.sendRedirect("jsp/erroradd.html");
		     }
		     break;
		case "update":
			int boatCapacityupdate=Integer.parseInt(request.getParameter("BoatCapacity"));
			result=boatService.updateBoat(boatId, boatName, boatCapacityupdate);
			if(result == true){
		         response.sendRedirect("jsp/errorupdate.html");
		     }
		     else{
		         response.sendRedirect("jsp/updateboat.jsp");
		     }
		     break;
		case "delete":
			
			result=boatService.deleteBoat(boatId);
			if(result==true) {			
				response.sendRedirect("jsp/deleteboat.jsp");
			}
			else {
				response.sendRedirect("jsp/errorremove.html");
			}
			break;
		case "display":
			response.sendRedirect("jsp/listboat.jsp");
			break;
			
			
			
		}
		
		
	}
	

}
