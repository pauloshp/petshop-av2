/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.infrastructure;

import com.mycompany.petshop.domain.User;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;

/**
 *
 * @author henri
 */
@ApplicationScoped
public class UserDB {
    
    private List<User> usersDB = new ArrayList<>();

    public UserDB() {
       usersDB.add(new User("admin", "admin"));
    }
    
    public User findByUsername(String userName){
        return this.usersDB.stream()
                .filter(user -> user.getUsername().equals(userName))
                .findFirst().get();
    }
    
}
