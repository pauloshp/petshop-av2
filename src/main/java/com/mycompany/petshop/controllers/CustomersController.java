/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import com.mycompany.petshop.application.CustomerApplication;
import com.mycompany.petshop.domain.Customer;
import com.mycompany.petshop.exceptions.BusinessException;
import com.mycompany.petshop.web.annotation.Auth;
import javax.inject.Inject;

/**
 *
 * @author thiag
 */

@Controller
@Path("customers")
@Auth
public class CustomersController {
    
    @Inject
    private CustomerApplication customerApplication;

    @Inject
    private Result result;

    @Get("new")
    public void newCustomer() {

    }

    @Get("")
    public void getCustomers() {
        result.include("customersList", this.customerApplication.listAll());
    }

    @Get("id/{id}")
    public void getCustomer(String id) {
        result.include("customer", this.customerApplication.findById(id));
    }

    @Post("save")
    public void save(Customer customer) {
        try {
           this.customerApplication.save(customer);
           result.redirectTo(this).getCustomers();
        } catch (BusinessException ex){
           result.include("error", ex.getMessage());
           result.include("customer", customer);
           result.redirectTo(this).newCustomer();
        }
    }

    @Post("update")
    public void update(Customer customer) {
        this.customerApplication.update(customer);
        result.redirectTo(this).getCustomers();
    }

    @Post("delete")
    public void delete(Customer customer) {
        this.customerApplication.delete(customer.getId());
        result.redirectTo(this).getCustomers();
    }
}
