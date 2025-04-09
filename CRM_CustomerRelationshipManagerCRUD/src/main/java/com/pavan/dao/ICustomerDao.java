package com.pavan.dao;

import org.springframework.data.repository.CrudRepository;

import com.pavan.model.Customer;

public interface ICustomerDao extends CrudRepository<Customer, Integer> {

}
