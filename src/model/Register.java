package model;


import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.CustomerDTO;

public class Register implements CommandProsessor{
	
	CustomerDTO cdto = new CustomerDTO();
	
	public Register(CustomerDTO cdto) {
		this.cdto = cdto;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) {
		
		return "/member/test.jsp";
	}

}
