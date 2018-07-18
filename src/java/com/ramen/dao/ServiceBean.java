/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ramen.dao;

import com.ramen.model.Service;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Gavin
 */
@Stateless
public class ServiceBean implements ServiceBeanLocal {

    @PersistenceContext(unitName = "jsptest8PU")
    private EntityManager em;

    //add service
    @Override
    public void addService(Service service) {
        em.persist(service);
    }

    //edit service
    @Override
    public void editService(Service service) {
        em.merge(service);
    }

    //remove the service
    //based on id
    @Override
    public void deleteService(int sid) {
        em.remove(getService(sid));
    }

    //get a specific service 
    //based on id
    @Override
    public Service getService(int sid) {
        return em.find(Service.class, sid);
    }

    //find and view all services
    @Override
    public List<Service> getAllServices() {
        return em.createNamedQuery("Service.findAll").getResultList();
    }

    //search services by keyword in category and name
    //search services by suburb
    @Override
    public List<Service> searchServicesByKeyword(String keyword) {
            CriteriaBuilder builder = em.getCriteriaBuilder();
            CriteriaQuery query = builder.createQuery(Service.class);
            Root<Service> s = query.from(Service.class);
            query.select(s).where(builder.or(builder.like(s.get("category").as(String.class), "%" + keyword + "%"), builder.like(s.get("name").as(String.class), "%" + keyword + "%"),builder.like(s.get("description").as(String.class), "%" + keyword + "%"),builder.like(s.get("suburb").as(String.class), "%" + keyword + "%")));
            return em.createQuery(query).getResultList();
    }
    
}
