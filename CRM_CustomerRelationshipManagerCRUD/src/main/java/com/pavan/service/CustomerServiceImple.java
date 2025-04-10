package com.pavan.service;

import java.util.List;
import java.util.Optional;

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

	@Override
	public void saveCustomer(Customer customer) {
		dao.save(customer);

	}

	@Override
	public Customer getCustomerById(Integer customerId) {
		Optional<Customer> optional = dao.findById(customerId);

		return optional.get();
	}

	@Override
	public void deleteCustomerById(Integer customerId) {
		dao.deleteById(customerId);
	}

}
