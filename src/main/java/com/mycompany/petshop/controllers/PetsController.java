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
import com.mycompany.petshop.application.PetApplication;
import com.mycompany.petshop.domain.Pet;
import com.mycompany.petshop.exceptions.BusinessException;
import com.mycompany.petshop.web.annotation.Auth;
import javax.inject.Inject;

/**
 *
 * @author André
 */
@Controller
@Path("pets")
@Auth
public class PetsController {
    
    @Inject
    private PetApplication petApplication;

    @Inject
    private Result result;

    @Get("new")
    public void newPet() {

    }

    @Get("")
    public void getPets() {
        result.include("petList", this.petApplication.listAll());
    }

    @Get("id/{id}")
    public void updatePet(String id) {
        result.include("pet", this.petApplication.findById(id));
    }

    @Post("save")
    public void save(Pet pet) {
        try{
           this.petApplication.save(pet);
           result.redirectTo(this).getPets();
        }catch(BusinessException ex){
           result.include("error", ex.getMessage());
           result.include("pet", pet);
           result.redirectTo(this).newPet();
        }
    }

    @Post("update")
    public void update(Pet pet) {
        this.petApplication.update(pet);
        result.redirectTo(this).getPets();
    }

    @Post("delete")
    public void delete(Pet pet) {
        this.petApplication.delete(pet.getId());
        result.redirectTo(this).getPets();
    }
}