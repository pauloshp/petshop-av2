/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import com.mycompany.petshop.domain.User;
import com.mycompany.petshop.infrastructure.UserDB;
import com.mycompany.petshop.web.components.AuthSession;
import javax.inject.Inject;

/**
 *
 * @author henri
 */
@Controller
public class AuthController {
    
    @Inject
    private UserDB usersDB;

    @Inject
    private Result result;

    @Inject
    private AuthSession session;

    @Get("login")
    public void login() {

    }

    @Post("auth")
    public void authenticate(User user) {
        User fromDB = this.usersDB.findByUsername(user.getUsername());
        if (fromDB != null) {
            if (fromDB.getPassword().equals(user.getPassword())) {
                this.session.setUsername(fromDB.getUsername());
                this.result.redirectTo(MainController.class).homePage();
            }
        } else {
            result.include("msgLoginError", "Usuário/senha inválidos");
            result.redirectTo(this).login();
        }
    }

    @Get("logout")
    public void logout() {
        this.session.logout();
        result.redirectTo(this).login();
    }
    
}
