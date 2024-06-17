package controller.controller_module;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CommandProsessor;
import model.product.ProductDetail;
import model.product.ProductList;

public class Command_Product extends Command_Parents{

	@Override
	public CommandProsessor command_Operate(HttpServletRequest req, HttpServletResponse resp, String servletPath) {
		if(servletPath.contains("/product/list.do")) {
			processor = new ProductList();
		}else if(servletPath.contains("/details.do")) {
			processor = new ProductDetail();
		}else {
			System.out.println("매칭되는 서블릿 없음");
		}
		return processor;
	}

}