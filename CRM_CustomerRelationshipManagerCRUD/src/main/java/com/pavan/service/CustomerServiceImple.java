package com.pavan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pavan.dao.ICustomerDao;
import com.pavan.model.Customer;

@Service
public class CustomerServiceImple implements ICustomerService {

	@Autowired
	private ICustomerDao dao;
	
	@Override
	public List<Customer> getAllCustomer() {
		
		return (List<Customer>) dao.findAll();
	}

}
