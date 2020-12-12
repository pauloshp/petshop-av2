/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.infrastructure;
import com.mycompany.petshop.domain.Pet;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;
/**
 *
 * @author André
 */
@ApplicationScoped
public class PetDB {
    
    private List<Pet> petList = new ArrayList<>();
   
    public PetDB() {
        
    }
    
    public void save(Pet pet) {
        this.petList.add(pet);
    }
    
    public Pet findById(String id) {
        Pet found = null;
        for (Pet pet : petList) {
            if (pet.getId().equals(id)) {
                found = pet;
                break;
            }
        }
        return found;
    }
    
    public Pet findByCpfCustomer(String cpf_cliente) {
        return this.petList.stream()
                .filter(pet -> pet.getCpf_cliente().equals(cpf_cliente))
                .findFirst().orElse(null);
    }
    
    public void update(Pet pet) {
        for (int i = 0; i < petList.size(); i++) {
            if(petList.get(i).getId().equals(pet.getId())) {
                System.out.println("Aqui " + pet.getNome());
                petList.set(i, pet);
                break;
            }
        }
    }
    
    public List<Pet> listAll() {
        return petList;
    }
    
    public void delete(String id) {
        petList.removeIf(pet -> pet.getId().equals(id));
    }
    
}