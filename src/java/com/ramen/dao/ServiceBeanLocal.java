/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ramen.dao;

import com.ramen.model.Service;
import java.util.List;
import javax.ejb.Local;
import javax.ejb.Remote;

/**
 *
 * @author Gavin
 */
@Remote
public interface ServiceBeanLocal {

    //add service
    void addService(Service service); 

    //edit service
    void editService(Service service);

    //remove the service
    //based on id
    void deleteService(int sid);

    //get a specific service 
    //based on id
    Service getService(int sid);

    //find and view all services
    List<Service> getAllServices();

    /*
     * search services by keyword in category and name
     *
     * return the list of Service.
    */
    List<Service> searchServicesByKeyword(String keyword);

    
    
    
}
