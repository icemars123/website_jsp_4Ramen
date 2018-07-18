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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 *
 * @author Gavin
 */
@Entity
@Table(name = "Police")
@NamedQueries({
    @NamedQuery(name = "Police.findAll", query = "SELECT p FROM Police p"),
    @NamedQuery(name = "Police.findByPid", query = "SELECT p FROM Police p WHERE p.pid = :pid"),
    @NamedQuery(name = "Police.findByDivision", query = "SELECT p FROM Police p WHERE p.division = :division"),
    @NamedQuery(name = "Police.findByNo", query = "SELECT p FROM Police p WHERE p.no = :no"),
    @NamedQuery(name = "Police.findByPostcode", query = "SELECT p FROM Police p WHERE p.postcode = :postcode"),
    @NamedQuery(name = "Police.findByPhone", query = "SELECT p FROM Police p WHERE p.phone = :phone"),
    @NamedQuery(name = "Police.findByFax", query = "SELECT p FROM Police p WHERE p.fax = :fax"),
    @NamedQuery(name = "Police.findByLongitude", query = "SELECT p FROM Police p WHERE p.longitude = :longitude"),
    @NamedQuery(name = "Police.findByLatitude", query = "SELECT p FROM Police p WHERE p.latitude = :latitude")})
public class Police implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "pid")
    private Integer pid;
    @Lob
    @Size(max = 65535)
    @Column(name = "Station")
    private String station;
    @Lob
    @Size(max = 65535)
    @Column(name = "Region")
    private String region;
    @Column(name = "Division")
    private Integer division;
    @Lob
    @Size(max = 65535)
    @Column(name = "PSA")
    private String psa;
    @Lob
    @Size(max = 65535)
    @Column(name = "Area")
    private String area;
    @Column(name = "No")
    private Integer no;
    @Lob
    @Size(max = 65535)
    @Column(name = "Street")
    private String street;
    @Lob
    @Size(max = 65535)
    @Column(name = "Type")
    private String type;
    @Lob
    @Size(max = 65535)
    @Column(name = "Suburb")
    private String suburb;
    @Column(name = "Postcode")
    private Integer postcode;
    @Column(name = "Phone")
    private Integer phone;
    @Column(name = "Fax")
    private Integer fax;
    @Lob
    @Size(max = 65535)
    @Column(name = "Fire_Ban_Region")
    private String fireBanRegion;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "Longitude")
    private Double longitude;
    @Column(name = "Latitude")
    private Double latitude;

    public Police() {
    }

    public Police(Integer pid) {
        this.pid = pid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public Integer getDivision() {
        return division;
    }

    public void setDivision(Integer division) {
        this.division = division;
    }

    public String getPsa() {
        return psa;
    }

    public void setPsa(String psa) {
        this.psa = psa;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public Integer getPostcode() {
        return postcode;
    }

    public void setPostcode(Integer postcode) {
        this.postcode = postcode;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public Integer getFax() {
        return fax;
    }

    public void setFax(Integer fax) {
        this.fax = fax;
    }

    public String getFireBanRegion() {
        return fireBanRegion;
    }

    public void setFireBanRegion(String fireBanRegion) {
        this.fireBanRegion = fireBanRegion;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pid != null ? pid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Police)) {
            return false;
        }
        Police other = (Police) object;
        if ((this.pid == null && other.pid != null) || (this.pid != null && !this.pid.equals(other.pid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ramen.model.Police[ pid=" + pid + " ]";
    }
    
}
