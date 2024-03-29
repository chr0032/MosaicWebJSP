package com.hybrid.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/detail")
public class DetailServlet extends HttpServlet{
	
	Logger log = LoggerFactory.getLogger(DetailServlet.class);

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		log.info("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
		log.info("DetailServlet.doGet(..........)");
		log.info("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		log.info("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
		log.info("DetailServlet.doPost(..........)");
		log.info("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
	}
}
