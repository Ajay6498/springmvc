package com.java.spring.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "student/")
public class StudentController {
	static {
		System.out.println("Inside studentController...");
	}


	@RequestMapping(value = "add/", method = RequestMethod.POST)
	public void addStudent() {

	}

	@RequestMapping(value = "delete/", method = RequestMethod.GET)
	public void deleteStudent() {

	}

	@RequestMapping(value = "update/", method = RequestMethod.POST)
	public void updateStudent() {

	}

	@RequestMapping(value = "all/", method = RequestMethod.GET)
	public void getAllStudents() {

	}

	@RequestMapping(value = "search/", method = RequestMethod.GET)
	public void searchStudent() {

	}

}
