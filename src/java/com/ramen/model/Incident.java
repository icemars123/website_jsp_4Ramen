/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ramen.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Gavin
 */
@Entity
@Table(name = "Incident")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Incident.findAll", query = "SELECT i FROM Incident i"),
    @NamedQuery(name = "Incident.findById", query = "SELECT i FROM Incident i WHERE i.id = :id"),
    @NamedQuery(name = "Incident.findByYear", query = "SELECT i FROM Incident i WHERE i.year = :year"),
    @NamedQuery(name = "Incident.findByWhereChargesLaid", query = "SELECT i FROM Incident i WHERE i.whereChargesLaid = :whereChargesLaid"),
    @NamedQuery(name = "Incident.findByWhereChildrenPresent", query = "SELECT i FROM Incident i WHERE i.whereChildrenPresent = :whereChildrenPresent")})
public class Incident implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id")
    private Integer id;
    @Lob
    @Size(max = 65535)
    @Column(name = "Suburb")
    private String suburb;
    @Lob
    @Size(max = 65535)
    @Column(name = "Region")
    private String region;
    @Column(name = "Year")
    private Integer year;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "Where Charges Laid")
    private Double whereChargesLaid;
    @Column(name = "Where Children Present")
    private Double whereChildrenPresent;
    @Lob
    @Size(max = 65535)
    @Column(name = "Family Incidents")
    private String familyIncidents;

    public Incident() {
    }

    public Incident(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Double getWhereChargesLaid() {
        return whereChargesLaid;
    }

    public void setWhereChargesLaid(Double whereChargesLaid) {
        this.whereChargesLaid = whereChargesLaid;
    }

    public Double getWhereChildrenPresent() {
        return whereChildrenPresent;
    }

    public void setWhereChildrenPresent(Double whereChildrenPresent) {
        this.whereChildrenPresent = whereChildrenPresent;
    }

    public String getFamilyIncidents() {
        return familyIncidents;
    }

    public void setFamilyIncidents(String familyIncidents) {
        this.familyIncidents = familyIncidents;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Incident)) {
            return false;
        }
        Incident other = (Incident) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ramen.model.Incident[ id=" + id + " ]";
    }
    
}
