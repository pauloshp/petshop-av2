/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import com.mycompany.petshop.web.annotation.Auth;

/**
 *
 * @author henri
 */
@Controller
@Path("main")
@Auth
public class MainController {

    @Get("home")
    public void homePage() {

    }

}
