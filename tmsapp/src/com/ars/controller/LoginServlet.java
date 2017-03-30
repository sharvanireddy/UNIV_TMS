package com.ars.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ars.dao.CourseDao;
import com.ars.dao.EnquiryDao;
import com.ars.dao.LoginDao;
import com.ars.dao.ServicesDao;
import com.ars.model.Course;
import com.ars.model.Enquiry;
import com.ars.model.Student;

public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		String viewType=request.getParameter("viewType");
		HttpSession session = request.getSession(false);
		if(viewType!=null && "login".equalsIgnoreCase(viewType)) {
		String n=request.getParameter("username");  
		String p=request.getParameter("userpass"); 
		
		
		if(session!=null)
		request.setAttribute("name", n);
		
		Student user = LoginDao.validate(n, p);
		if(user!=null){  
			String userType = user.getUserType();
			session.setAttribute("username", n);
			session.setAttribute("user", user);
			if(!userType.isEmpty() && ("student".equals(userType))) {
				Enquiry enquiry = new Enquiry();
				EnquiryDao enquiryDao = new EnquiryDao();
				enquiry.setName(user.getUserName());
				List<Enquiry> enquiryList = enquiryDao.getEnquiryDetails(enquiry);
				
				if(enquiryList.size()==0) {
					request.setAttribute("errorMsg", "No tickets to display!");
				}
				request.setAttribute("enquiryList",enquiryList);
				session.setAttribute("enquiryList",enquiryList);
				RequestDispatcher rd=request.getRequestDispatcher("managecourses.jsp");  
			rd.forward(request,response);  
			}else {
				CourseDao courseDao  = new CourseDao();
				List<Student> studentsList = courseDao.getStudentDetails();
				if(studentsList.size()==0) {
					request.setAttribute("errorMsg", "No Users to display!");
				}
				request.setAttribute("studentsList",studentsList);
				session.setAttribute("studentsList",studentsList);
				request.setAttribute("studentsListMain",studentsList);
				session.setAttribute("studentsListMain",studentsList);
				RequestDispatcher rd=request.getRequestDispatcher("viewstudents.jsp");  
				rd.forward(request,response);  
				}
		}  
		else{  
			request.setAttribute("errorMsg", "Invalid username or password!");  
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
			rd.forward(request,response);  
		}  

		out.close();  
		}else if(viewType!=null && "logout".equalsIgnoreCase(viewType)) {
			if (session != null){
				session.invalidate();
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
				rd.forward(request,response);
			}
		}
	}  
}  