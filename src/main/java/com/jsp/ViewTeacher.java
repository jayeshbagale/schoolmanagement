package com.jsp;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/viewsteacher")
public class ViewTeacher extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("jayesh");
		EntityManager em=emf.createEntityManager();
		Teacher t=em.find(Teacher.class, id);
		HttpSession hs=req.getSession();
		hs.setAttribute("view", t);
		RequestDispatcher rd=req.getRequestDispatcher("displayteacher.jsp");
		rd.forward(req, resp);
		
	}
}
