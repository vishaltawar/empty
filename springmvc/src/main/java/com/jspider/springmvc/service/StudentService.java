package com.jspider.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspider.springmvc.pojo.StudentPojo;
import com.jspider.springmvc.repository.StudentRepository;

@Service
public class StudentService {
	
	@Autowired
	StudentRepository repository;

	public StudentPojo login(String username, String password) {
		 StudentPojo pojo = repository.login(username,password);
		 return pojo;
	}

}