package com.java.spring.mvc.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebXmlJavaConfig implements WebApplicationInitializer {
	
	static {
		System.out.println("WebXmlJavaConfig Loaded..");
	}
	
	public void onStartup(ServletContext ctx) throws ServletException {
		 AnnotationConfigWebApplicationContext webCtx = new AnnotationConfigWebApplicationContext();
		 webCtx.register(SpringConfiguration.class);
		 webCtx.setServletContext(ctx);
		 ServletRegistration.Dynamic servlet = ctx.addServlet("dispatcher", new DispatcherServlet(webCtx));
		 servlet.setLoadOnStartup(1);
		 servlet.addMapping("/");
	}

}

 
