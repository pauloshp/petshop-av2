/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.domain;

import com.mycompany.petshop.exceptions.BusinessException;
import com.mycompany.petshop.infrastructure.CustomerDB;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

/**
 *
 * @author thiag
 */
@ApplicationScoped
public class CustomerService {
    @Inject
    private CustomerDB clientedb;
    
    public void save(Customer customer) {
        Customer found = this.clientedb.findByCpf(customer.getCpf());
        if (found != null) {
            throw new BusinessException("CPF já cadastrado");
        }
        this.clientedb.save(customer);
    }
    
    public Customer findById(String id) {
        return this.clientedb.findById(id);
    }
    
    public List<Customer> listAll() {
        return this.clientedb.listAll();
    }
    
    public void update(Customer customer) {
        this.clientedb.update(customer);
    }
    
    public void delete(String id) {
        this.clientedb.delete(id);
    }
}
