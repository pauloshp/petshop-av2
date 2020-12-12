/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.application;

import com.mycompany.petshop.domain.Pet;
import com.mycompany.petshop.domain.PetService;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

/**
 *
 * @author André
 */
@ApplicationScoped
public class PetApplication {
    
    @Inject
    private PetService petService;
    
    public void save(Pet pet) {
        this.petService.save(pet);
    }
    
    public List<Pet> listAll() {
        return this.petService.listAll();
    }

    public Pet findById(String id) {
        return this.petService.findById(id);
    }

    public void update(Pet pet) {
        this.petService.update(pet);
    }
    
    public void delete(String id) {
        this.petService.delete(id);
    }
}