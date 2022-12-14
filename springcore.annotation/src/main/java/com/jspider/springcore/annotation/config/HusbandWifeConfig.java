package com.jspider.springcore.annotation.config;

import org.springframework.context.annotation.Bean;

import com.jspider.springcore.annotation.beans.HusbandBean;
import com.jspider.springcore.annotation.beans.WifeBean;

public class HusbandWifeConfig {
	@Bean("Husband")
	public HusbandBean getHusbandBean() {
		HusbandBean husband=new HusbandBean();
		husband.setId(1);
		husband.setName("Dadu");
		husband.setAge(25);	
		husband.setWife(getWifeBean());
		return husband;
	}
	@Bean("Wife")
	public WifeBean getWifeBean() {
		WifeBean wife=new WifeBean();
		wife.setId(1);
		wife.setName("Chakuli");
		wife.setAge(22);
		return wife;
	}

}
