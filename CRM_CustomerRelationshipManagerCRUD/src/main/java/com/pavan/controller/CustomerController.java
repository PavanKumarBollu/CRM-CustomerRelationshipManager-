package com.pavan.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pavan.model.Customer;
import com.pavan.service.ICustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private ICustomerService service;
	
	@GetMapping(value="/list")
	public String listCustomers(Map<String,Object> model)
	{
		List<Customer> allCustomer = service.getAllCustomer();
		model.put("allCustomer", allCustomer);
		return "list-customers";
	}
}
