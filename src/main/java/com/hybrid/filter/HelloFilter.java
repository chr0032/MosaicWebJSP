package com.hybrid.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Servlet Filter implementation class HelloFilter
 */
@WebFilter("/*") //default // "/*" -> 모든 URL 필터 작동 
public class HelloFilter implements Filter {

    /**
     * Default constructor. 
     */
    public HelloFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	
	public static Logger log = LoggerFactory.getLogger(HelloFilter.class);
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		log.info("HelloFilter.doFilter()..........");
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
		log.info("HelloFilter.init()..........");
		log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
	
	}

}