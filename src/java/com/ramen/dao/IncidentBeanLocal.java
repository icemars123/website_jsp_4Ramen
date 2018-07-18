/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ramen.dao;

import com.ramen.model.Incident;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Gavin
 */
@Local
public interface IncidentBeanLocal {

    public void addIncident(Incident incident);

    public void editIncident(Incident incident);

    public Incident getIncident(int id);

    public void deleteIncident(int id);

    public List<Incident> getAllIncident();
    
}
