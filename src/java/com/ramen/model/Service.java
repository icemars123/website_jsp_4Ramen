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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Gavin
 */
@Entity
@Table(name = "Service")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Service.findAll", query = "SELECT s FROM Service s"),
    @NamedQuery(name = "Service.findBySid", query = "SELECT s FROM Service s WHERE s.sid = :sid"),
    @NamedQuery(name = "Service.findByLatitude", query = "SELECT s FROM Service s WHERE s.latitude = :latitude"),
    @NamedQuery(name = "Service.findByLongitude", query = "SELECT s FROM Service s WHERE s.longitude = :longitude"),
    @NamedQuery(name = "Service.findByPostcode", query = "SELECT s FROM Service s WHERE s.postcode = :postcode")})
public class Service implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "SID")
    private Integer sid;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "LATITUDE")
    private Double latitude;
    @Column(name = "LONGITUDE")
    private Double longitude;
    @Lob
    @Size(max = 65535)
    @Column(name = "CATEGORY")
    private String category;
    @Lob
    @Size(max = 65535)
    @Column(name = "NAME")
    private String name;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_PROVIDER")
    private String serviceProvider;
    @Lob
    @Size(max = 65535)
    @Column(name = "DESCRIPTION")
    private String description;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_1")
    private String service1;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_1_DESC")
    private String service1Desc;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_1_TIME")
    private String service1Time;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_1_ACCESS")
    private String service1Access;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_2")
    private String service2;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_2_DESC")
    private String service2Desc;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_2_TIME")
    private String service2Time;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_2_ACCESS")
    private String service2Access;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_3")
    private String service3;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_3_DESC")
    private String service3Desc;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_3_TIME")
    private String service3Time;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_3_ACCESS")
    private String service3Access;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_4")
    private String service4;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_4_DESC")
    private String service4Desc;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_4_TIME")
    private String service4Time;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_4_ACCESS")
    private String service4Access;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_5")
    private String service5;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_5_DESC")
    private String service5Desc;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_5_TIME")
    private String service5Time;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_5_ACCESS")
    private String service5Access;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_6")
    private String service6;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_6_DESC")
    private String service6Desc;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_6_TIME")
    private String service6Time;
    @Lob
    @Size(max = 65535)
    @Column(name = "SERVICE_6_ACCESS")
    private String service6Access;
    @Lob
    @Size(max = 65535)
    @Column(name = "SUBURB")
    private String suburb;
    @Column(name = "POSTCODE")
    private Integer postcode;
    @Lob
    @Size(max = 65535)
    @Column(name = "PHONE_1")
    private String phone1;
    @Lob
    @Size(max = 65535)
    @Column(name = "PHONE_2")
    private String phone2;
    @Lob
    @Size(max = 65535)
    @Column(name = "FREECALL_PHONE")
    private String freecallPhone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Lob
    @Size(max = 65535)
    @Column(name = "EMAIL")
    private String email;
    @Lob
    @Size(max = 65535)
    @Column(name = "WEBSITE_1")
    private String website1;
    @Lob
    @Size(max = 65535)
    @Column(name = "WEBSITE_2")
    private String website2;
    @Lob
    @Size(max = 65535)
    @Column(name = "MON_HRS")
    private String monHrs;
    @Lob
    @Size(max = 65535)
    @Column(name = "TUE_HRS")
    private String tueHrs;
    @Lob
    @Size(max = 65535)
    @Column(name = "WED_HRS")
    private String wedHrs;
    @Lob
    @Size(max = 65535)
    @Column(name = "THU_HRS")
    private String thuHrs;
    @Lob
    @Size(max = 65535)
    @Column(name = "FRI_HRS")
    private String friHrs;
    @Lob
    @Size(max = 65535)
    @Column(name = "SAT_HRS")
    private String satHrs;
    @Lob
    @Size(max = 65535)
    @Column(name = "SUN_HRS")
    private String sunHrs;
    @Lob
    @Size(max = 65535)
    @Column(name = "PUBLIC_HOLIDAY_INFO")
    private String publicHolidayInfo;
    @Lob
    @Size(max = 65535)
    @Column(name = "COST")
    private String cost;
    @Lob
    @Size(max = 65535)
    @Column(name = "TRAM_ROUTES")
    private String tramRoutes;
    @Lob
    @Size(max = 65535)
    @Column(name = "BUS_ROUTES")
    private String busRoutes;
    @Lob
    @Size(max = 65535)
    @Column(name = "NEAREST_TRAIN_STATION")
    private String nearestTrainStation;
    @Lob
    @Size(max = 65535)
    @Column(name = "LOCATION")
    private String location;
    @Lob
    @Size(max = 65535)
    @Column(name = "LOCATION_2")
    private String location2;
    @Lob
    @Size(max = 65535)
    @Column(name = "COORDINATE")
    private String coordinate;

    public Service() {
    }

    public Service(Integer sid) {
        this.sid = sid;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getServiceProvider() {
        return serviceProvider;
    }

    public void setServiceProvider(String serviceProvider) {
        this.serviceProvider = serviceProvider;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getService1() {
        return service1;
    }

    public void setService1(String service1) {
        this.service1 = service1;
    }

    public String getService1Desc() {
        return service1Desc;
    }

    public void setService1Desc(String service1Desc) {
        this.service1Desc = service1Desc;
    }

    public String getService1Time() {
        return service1Time;
    }

    public void setService1Time(String service1Time) {
        this.service1Time = service1Time;
    }

    public String getService1Access() {
        return service1Access;
    }

    public void setService1Access(String service1Access) {
        this.service1Access = service1Access;
    }

    public String getService2() {
        return service2;
    }

    public void setService2(String service2) {
        this.service2 = service2;
    }

    public String getService2Desc() {
        return service2Desc;
    }

    public void setService2Desc(String service2Desc) {
        this.service2Desc = service2Desc;
    }

    public String getService2Time() {
        return service2Time;
    }

    public void setService2Time(String service2Time) {
        this.service2Time = service2Time;
    }

    public String getService2Access() {
        return service2Access;
    }

    public void setService2Access(String service2Access) {
        this.service2Access = service2Access;
    }

    public String getService3() {
        return service3;
    }

    public void setService3(String service3) {
        this.service3 = service3;
    }

    public String getService3Desc() {
        return service3Desc;
    }

    public void setService3Desc(String service3Desc) {
        this.service3Desc = service3Desc;
    }

    public String getService3Time() {
        return service3Time;
    }

    public void setService3Time(String service3Time) {
        this.service3Time = service3Time;
    }

    public String getService3Access() {
        return service3Access;
    }

    public void setService3Access(String service3Access) {
        this.service3Access = service3Access;
    }

    public String getService4() {
        return service4;
    }

    public void setService4(String service4) {
        this.service4 = service4;
    }

    public String getService4Desc() {
        return service4Desc;
    }

    public void setService4Desc(String service4Desc) {
        this.service4Desc = service4Desc;
    }

    public String getService4Time() {
        return service4Time;
    }

    public void setService4Time(String service4Time) {
        this.service4Time = service4Time;
    }

    public String getService4Access() {
        return service4Access;
    }

    public void setService4Access(String service4Access) {
        this.service4Access = service4Access;
    }

    public String getService5() {
        return service5;
    }

    public void setService5(String service5) {
        this.service5 = service5;
    }

    public String getService5Desc() {
        return service5Desc;
    }

    public void setService5Desc(String service5Desc) {
        this.service5Desc = service5Desc;
    }

    public String getService5Time() {
        return service5Time;
    }

    public void setService5Time(String service5Time) {
        this.service5Time = service5Time;
    }

    public String getService5Access() {
        return service5Access;
    }

    public void setService5Access(String service5Access) {
        this.service5Access = service5Access;
    }

    public String getService6() {
        return service6;
    }

    public void setService6(String service6) {
        this.service6 = service6;
    }

    public String getService6Desc() {
        return service6Desc;
    }

    public void setService6Desc(String service6Desc) {
        this.service6Desc = service6Desc;
    }

    public String getService6Time() {
        return service6Time;
    }

    public void setService6Time(String service6Time) {
        this.service6Time = service6Time;
    }

    public String getService6Access() {
        return service6Access;
    }

    public void setService6Access(String service6Access) {
        this.service6Access = service6Access;
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

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getFreecallPhone() {
        return freecallPhone;
    }

    public void setFreecallPhone(String freecallPhone) {
        this.freecallPhone = freecallPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite1() {
        return website1;
    }

    public void setWebsite1(String website1) {
        this.website1 = website1;
    }

    public String getWebsite2() {
        return website2;
    }

    public void setWebsite2(String website2) {
        this.website2 = website2;
    }

    public String getMonHrs() {
        return monHrs;
    }

    public void setMonHrs(String monHrs) {
        this.monHrs = monHrs;
    }

    public String getTueHrs() {
        return tueHrs;
    }

    public void setTueHrs(String tueHrs) {
        this.tueHrs = tueHrs;
    }

    public String getWedHrs() {
        return wedHrs;
    }

    public void setWedHrs(String wedHrs) {
        this.wedHrs = wedHrs;
    }

    public String getThuHrs() {
        return thuHrs;
    }

    public void setThuHrs(String thuHrs) {
        this.thuHrs = thuHrs;
    }

    public String getFriHrs() {
        return friHrs;
    }

    public void setFriHrs(String friHrs) {
        this.friHrs = friHrs;
    }

    public String getSatHrs() {
        return satHrs;
    }

    public void setSatHrs(String satHrs) {
        this.satHrs = satHrs;
    }

    public String getSunHrs() {
        return sunHrs;
    }

    public void setSunHrs(String sunHrs) {
        this.sunHrs = sunHrs;
    }

    public String getPublicHolidayInfo() {
        return publicHolidayInfo;
    }

    public void setPublicHolidayInfo(String publicHolidayInfo) {
        this.publicHolidayInfo = publicHolidayInfo;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public String getTramRoutes() {
        return tramRoutes;
    }

    public void setTramRoutes(String tramRoutes) {
        this.tramRoutes = tramRoutes;
    }

    public String getBusRoutes() {
        return busRoutes;
    }

    public void setBusRoutes(String busRoutes) {
        this.busRoutes = busRoutes;
    }

    public String getNearestTrainStation() {
        return nearestTrainStation;
    }

    public void setNearestTrainStation(String nearestTrainStation) {
        this.nearestTrainStation = nearestTrainStation;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLocation2() {
        return location2;
    }

    public void setLocation2(String location2) {
        this.location2 = location2;
    }

    public String getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(String coordinate) {
        this.coordinate = coordinate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sid != null ? sid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Service)) {
            return false;
        }
        Service other = (Service) object;
        if ((this.sid == null && other.sid != null) || (this.sid != null && !this.sid.equals(other.sid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ramen.model.Service[ sid=" + sid + " ]";
    }
    
}
