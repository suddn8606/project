package com.flasic.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginformAction implements Action {
@Override
public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	String url = "/member/login.jsp";
	
	RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(url);
    dispatcher.forward(request, response);
}
}
