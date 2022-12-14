package com.jspider.springcore.annotation.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.jspider.springcore.annotation.beans.StudentBean;
import com.jspider.springcore.annotation.config.StudentConfig;

public class StudentMain {
	public static void main(String[] args) {

		ApplicationContext context = new AnnotationConfigApplicationContext(StudentConfig.class);
		StudentBean student = context.getBean(StudentBean.class);
		System.out.println(student);
		((AnnotationConfigApplicationContext) context).close();

	}

}
