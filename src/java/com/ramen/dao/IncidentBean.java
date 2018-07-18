/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ramen.dao;

import com.ramen.model.Incident;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Gavin
 */
@Stateless
public class IncidentBean implements IncidentBeanLocal {

    @PersistenceContext(unitName = "jsptest8PU")
    private EntityManager em;
    
    /**
     *
     * @param incident
     */
    @Override
    public void addIncident(Incident incident){
        em.persist(incident);
    }
    
    @Override
    public void editIncident(Incident incident){
        em.merge(incident);
    }
    
    @Override
    public void deleteIncident(int id){
        em.remove(getIncident(id));
    }
    
    @Override
    public Incident getIncident(int id){
        return em.find(Incident.class, id);
    }
    
    /**
     *
     * @return
     */
    @Override
    public List<Incident> getAllIncident(){
        return em.createNamedQuery("Incident.findAll").getResultList();
    }
    
}
