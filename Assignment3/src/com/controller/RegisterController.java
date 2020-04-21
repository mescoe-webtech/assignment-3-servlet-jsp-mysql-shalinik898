package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Registerdao;
import com.model.RegisterModel;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("enetred into controller ");
		String prn=request.getParameter("prn");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		int mob=Integer.parseInt(request.getParameter("mob"));
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String m=request.getParameter("m");
		String f=request.getParameter("f");
		String branch=request.getParameter("branch");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		RegisterModel r= new RegisterModel();
		r.setPrn(prn);
		r.setFname(fname);
		r.setLname(lname);
		r.setMob(mob);
		r.setEmail(email);
		r.setDob(dob);
		r.setEmail(email);
		r.setDob(dob);
		r.setM(m);
		r.setF(f);
		r.setBranch(branch);
		r.setUname(uname);
		r.setPass(pass);
		
		Registerdao rd=new Registerdao();
		
		List<RegisterModel> lst=new ArrayList<RegisterModel>();
		lst.add(r);
		
		int i =rd.saveData(lst);
		if(i>0) {
			response.sendRedirect("Login.jsp");
		}
		
		
		
	}

}
