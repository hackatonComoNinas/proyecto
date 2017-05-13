package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        String name=request.getParameter("txtUserName");
        String pass=request.getParameter("txtPass");
        
       
        if(name.equalsIgnoreCase("odisey") && pass.equalsIgnoreCase("odisey"))
        {
              try
              {
            	  
            	  request.getSession().setAttribute("uname", name);
            	  request.getRequestDispatcher("../../profmujer/success.jsp").forward(request, response);
            	    
            	  
              }
              catch (Exception e)
              {
            	  //response.getWriter().print("<p> La variable vale " + name+ "</p>");
              }
              
        }
        else
        {//if name&pass not match then it display error page//
            response.sendRedirect("../../profmujer/error.jsp");
        }
        
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
