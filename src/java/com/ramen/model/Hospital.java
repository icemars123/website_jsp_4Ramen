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
@Table(name = "Hospital")
@NamedQueries({
    @NamedQuery(name = "Hospital.findAll", query = "SELECT h FROM Hospital h"),
    @NamedQuery(name = "Hospital.findByFid", query = "SELECT h FROM Hospital h WHERE h.fid = :fid"),
    @NamedQuery(name = "Hospital.findByX", query = "SELECT h FROM Hospital h WHERE h.x = :x"),
    @NamedQuery(name = "Hospital.findByY", query = "SELECT h FROM Hospital h WHERE h.y = :y"),
    @NamedQuery(name = "Hospital.findByObjectid", query = "SELECT h FROM Hospital h WHERE h.objectid = :objectid"),
    @NamedQuery(name = "Hospital.findByCampusCode", query = "SELECT h FROM Hospital h WHERE h.campusCode = :campusCode"),
    @NamedQuery(name = "Hospital.findByPostcode", query = "SELECT h FROM Hospital h WHERE h.postcode = :postcode")})
public class Hospital implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "FID")
    private Integer fid;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "X")
    private Double x;
    @Column(name = "Y")
    private Double y;
    @Column(name = "OBJECTID")
    private Integer objectid;
    @Lob
    @Size(max = 65535)
    @Column(name = "Type")
    private String type;
    @Lob
    @Size(max = 65535)
    @Column(name = "OpsName")
    private String opsName;
    @Lob
    @Size(max = 65535)
    @Column(name = "LabelName")
    private String labelName;
    @Lob
    @Size(max = 65535)
    @Column(name = "ServiceNam")
    private String serviceNam;
    @Column(name = "CampusCode")
    private Integer campusCode;
    @Lob
    @Size(max = 65535)
    @Column(name = "StreetNum")
    private String streetNum;
    @Lob
    @Size(max = 65535)
    @Column(name = "RoadName")
    private String roadName;
    @Lob
    @Size(max = 65535)
    @Column(name = "RoadType")
    private String roadType;
    @Lob
    @Size(max = 65535)
    @Column(name = "RoadSuffix")
    private String roadSuffix;
    @Lob
    @Size(max = 65535)
    @Column(name = "LGAName")
    private String lGAName;
    @Lob
    @Size(max = 65535)
    @Column(name = "LocalityNa")
    private String localityNa;
    @Column(name = "Postcode")
    private Integer postcode;
    @Lob
    @Size(max = 65535)
    @Column(name = "VicgovRegi")
    private String vicgovRegi;
    @Lob
    @Size(max = 65535)
    @Column(name = "State")
    private String state;

    public Hospital() {
    }

    public Hospital(Integer fid) {
        this.fid = fid;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public Double getX() {
        return x;
    }

    public void setX(Double x) {
        this.x = x;
    }

    public Double getY() {
        return y;
    }

    public void setY(Double y) {
        this.y = y;
    }

    public Integer getObjectid() {
        return objectid;
    }

    public void setObjectid(Integer objectid) {
        this.objectid = objectid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOpsName() {
        return opsName;
    }

    public void setOpsName(String opsName) {
        this.opsName = opsName;
    }

    public String getLabelName() {
        return labelName;
    }

    public void setLabelName(String labelName) {
        this.labelName = labelName;
    }

    public String getServiceNam() {
        return serviceNam;
    }

    public void setServiceNam(String serviceNam) {
        this.serviceNam = serviceNam;
    }

    public Integer getCampusCode() {
        return campusCode;
    }

    public void setCampusCode(Integer campusCode) {
        this.campusCode = campusCode;
    }

    public String getStreetNum() {
        return streetNum;
    }

    public void setStreetNum(String streetNum) {
        this.streetNum = streetNum;
    }

    public String getRoadName() {
        return roadName;
    }

    public void setRoadName(String roadName) {
        this.roadName = roadName;
    }

    public String getRoadType() {
        return roadType;
    }

    public void setRoadType(String roadType) {
        this.roadType = roadType;
    }

    public String getRoadSuffix() {
        return roadSuffix;
    }

    public void setRoadSuffix(String roadSuffix) {
        this.roadSuffix = roadSuffix;
    }

    public String getLGAName() {
        return lGAName;
    }

    public void setLGAName(String lGAName) {
        this.lGAName = lGAName;
    }

    public String getLocalityNa() {
        return localityNa;
    }

    public void setLocalityNa(String localityNa) {
        this.localityNa = localityNa;
    }

    public Integer getPostcode() {
        return postcode;
    }

    public void setPostcode(Integer postcode) {
        this.postcode = postcode;
    }

    public String getVicgovRegi() {
        return vicgovRegi;
    }

    public void setVicgovRegi(String vicgovRegi) {
        this.vicgovRegi = vicgovRegi;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (fid != null ? fid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Hospital)) {
            return false;
        }
        Hospital other = (Hospital) object;
        if ((this.fid == null && other.fid != null) || (this.fid != null && !this.fid.equals(other.fid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ramen.model.Hospital[ fid=" + fid + " ]";
    }
    
}
