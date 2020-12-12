/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.web.intercepts;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import com.mycompany.petshop.controllers.AuthController;
import com.mycompany.petshop.web.annotation.Auth;
import com.mycompany.petshop.web.components.AuthSession;
import javax.inject.Inject;

/**
 *
 * @author henri
 */
@Intercepts
public class AuthIntercepts implements Interceptor {
    
    @Inject
    private Result result;

    @Inject
    private AuthSession session;

    @Override
    public void intercept(InterceptorStack is, ControllerMethod cm, Object o) throws InterceptionException {
        if (!session.isAuthenticate()) {
            result.redirectTo(AuthController.class).login();
        }
        is.next(cm, o);
    }

    @Override
    public boolean accepts(ControllerMethod cm) {
        return cm.getController().getType().isAnnotationPresent(Auth.class)
                || cm.containsAnnotation(Auth.class);
    }
    
}
