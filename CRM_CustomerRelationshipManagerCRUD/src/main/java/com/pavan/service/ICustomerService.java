package com.pavan.service;

import java.util.List;

import com.pavan.model.Customer;

public interface ICustomerService {
	public List<Customer> getAllCustomer();
	public void saveCustomer(Customer customer);
}
