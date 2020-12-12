/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.domain;
import com.mycompany.petshop.infrastructure.PetDB;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
/**
 *
 * @author André
 */
@ApplicationScoped
public class PetService {
    
    @Inject
    private PetDB petdb;
    
    public void save(Pet pet) {
        this.petdb.save(pet);
    }
    
    public Pet findById(String id) {
        return this.petdb.findById(id);
    }
    
    public List<Pet> listAll() {
        return this.petdb.listAll();
    }
    
    public void update(Pet pet) {
        this.petdb.update(pet);
    }
    
    public void delete(String id) {
        this.petdb.delete(id);
    }
}
    