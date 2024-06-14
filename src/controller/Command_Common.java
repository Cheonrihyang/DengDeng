package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CommandProsessor;
import model.LoginChk;
import model.Logout;

public class Command_Common {
	CommandProsessor processor = null;	
	
	public CommandProsessor commandCommon(HttpServletRequest req, HttpServletResponse resp,String servletPath){
		if(servletPath.contains("/login.do")) {
			processor = new LoginChk(req.getParameter("id"),req.getParameter("password"));
		}
		if(servletPath.contains("/logout.do")) {
			processor = new Logout();
		}
		return processor;
	}

}
