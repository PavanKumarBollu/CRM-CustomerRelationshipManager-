package com.pavan.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pavan.model.Customer;
import com.pavan.service.CustomerServiceImple;
import com.pavan.service.ICustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    private final CustomerServiceImple customerServiceImple;
	
	@Autowired
	private ICustomerService service;


    CustomerController(CustomerServiceImple customerServiceImple) {
        this.customerServiceImple = customerServiceImple;
    }
	
	
	
	@GetMapping(value="/list")
	public String listCustomers(Map<String,Object> model)
	{
		System.out.println("Implementation Class of Service Layer is ::" + service.getClass().getName());
		List<Customer> allCustomer = service.getAllCustomer();
		model.put("allCustomer", allCustomer);
		allCustomer.forEach(System.out::println);
		return "list-customers";
	}
	
	@GetMapping(value = "/showForm")
	public String showFormAdd(Map<String, Object> model)
	{
		System.out.println("inside Show form");
		model.put("customer", new Customer());
		return "customer-form";
	}
	@PostMapping(value="/saveCustomer")
	public String saveCustomer(@ModelAttribute Customer customer)
	{
		service.saveCustomer(customer);
		System.out.println(customer);
		return "redirect:/customer/list";
	}
	@GetMapping(value="/showFormForUpdate")
	public String showFromFroUpdate(@RequestParam Integer customerId, Map<String,Object> model)
	{
		Customer customer = service.getCustomerById(customerId);
		model.put("customer", customer);
		return "customer-form";
	}
	
	@GetMapping(value="/showFormForDelete")
	public String showFormForDelete(@RequestParam Integer customerId)
	{
		return "customer-form";
	}
	
	
}
