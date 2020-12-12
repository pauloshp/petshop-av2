/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.application;

import com.mycompany.petshop.domain.Customer;
import com.mycompany.petshop.domain.CustomerService;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

/**
 *
 * @author thiag
 */

@ApplicationScoped
public class CustomerApplication {
    
    @Inject
    private CustomerService customerService;
    
    public void save(Customer customer) {
        this.customerService.save(customer);
    }
    
    public List<Customer> listAll() {
        return this.customerService.listAll();
    }

    public Customer findById(String id) {
        return this.customerService.findById(id);
    }

    public void update(Customer customer) {
        this.customerService.update(customer);
    }
    
    public void delete(String id) {
        this.customerService.delete(id);
    }
}
