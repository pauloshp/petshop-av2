/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.infrastructure;

import com.mycompany.petshop.domain.Customer;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;
/**
 *
 * @author thiag
 */
@ApplicationScoped
public class CustomerDB {
    
    private List<Customer> customersList = new ArrayList<>();
   
    public CustomerDB() {
        
    }
    
    public void save(Customer customer) {
        this.customersList.add(customer);
    }
    
    public Customer findById(String id) {
        Customer found = null;
        for (Customer customer : customersList) {
            if (customer.getId().equals(id)) {
                found = customer;
                break;
            }
        }
        return found;
    }
    
    public Customer findByCpf(String cpf) {
        return this.customersList.stream()
                .filter(customer -> customer.getCpf().equals(cpf))
                .findFirst().orElse(null);
    }
    
    public void update(Customer customer) {
        for (int i = 0; i < customersList.size(); i++) {
            if(customersList.get(i).getId().equals(customer.getId())) {
                System.out.println("Aqui " + customer.getNome());
                customersList.set(i, customer);
                break;
            }
        }
    }
    
    public List<Customer> listAll() {
        return customersList;
    }
    
    public void delete(String id) {
        customersList.removeIf(cliente -> cliente.getId().equals(id));
    }
    
}