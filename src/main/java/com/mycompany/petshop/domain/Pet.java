/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.petshop.domain;
import java.util.UUID;
/**
 *
 * @author André
 */
public class Pet {
    
    private String id;
    private String nome;
    private String cpf_cliente;
    private String especie;
    private String raca;

    public Pet(){
        this.id = UUID.randomUUID().toString();
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getId() {
        return id;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf_cliente() {
        return cpf_cliente;
    }

    public void setCpf_cliente(String cpf_cliente) {
        this.cpf_cliente = cpf_cliente;
    }

    public String getEspecie() {
        return especie;
    }

    public void setEspecie(String especie) {
        this.especie = especie;
    }

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }
    
}