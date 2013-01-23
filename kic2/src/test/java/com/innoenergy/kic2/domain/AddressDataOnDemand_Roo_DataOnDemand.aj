// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.domain;

import com.innoenergy.kic2.domain.Address;
import com.innoenergy.kic2.domain.AddressDataOnDemand;
import com.innoenergy.kic2.domain.CountryDataOnDemand;
import com.innoenergy.kic2.domain.Firm;
import com.innoenergy.kic2.domain.FirmDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AddressDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AddressDataOnDemand: @Component;
    
    private Random AddressDataOnDemand.rnd = new SecureRandom();
    
    private List<Address> AddressDataOnDemand.data;
    
    @Autowired
    private CountryDataOnDemand AddressDataOnDemand.countryDataOnDemand;
    
    @Autowired
    private FirmDataOnDemand AddressDataOnDemand.firmDataOnDemand;
    
    public Address AddressDataOnDemand.getNewTransientAddress(int index) {
        Address obj = new Address();
        setAddress(obj, index);
        setCity(obj, index);
        setComment(obj, index);
        setFirm(obj, index);
        setLatitude(obj, index);
        setLongitude(obj, index);
        setZipCode(obj, index);
        return obj;
    }
    
    public void AddressDataOnDemand.setAddress(Address obj, int index) {
        String address = "address_" + index;
        if (address.length() > 100) {
            address = address.substring(0, 100);
        }
        obj.setAddress(address);
    }
    
    public void AddressDataOnDemand.setCity(Address obj, int index) {
        String city = "city_" + index;
        if (city.length() > 100) {
            city = city.substring(0, 100);
        }
        obj.setCity(city);
    }
    
    public void AddressDataOnDemand.setComment(Address obj, int index) {
        String comment = "comment_" + index;
        if (comment.length() > 500) {
            comment = comment.substring(0, 500);
        }
        obj.setComment(comment);
    }
    
    public void AddressDataOnDemand.setFirm(Address obj, int index) {
        Firm firm = firmDataOnDemand.getRandomFirm();
        obj.setFirm(firm);
    }
    
    public void AddressDataOnDemand.setLatitude(Address obj, int index) {
        String latitude = "latitude_" + index;
        if (latitude.length() > 100) {
            latitude = latitude.substring(0, 100);
        }
        obj.setLatitude(latitude);
    }
    
    public void AddressDataOnDemand.setLongitude(Address obj, int index) {
        String longitude = "longitude_" + index;
        if (longitude.length() > 100) {
            longitude = longitude.substring(0, 100);
        }
        obj.setLongitude(longitude);
    }
    
    public void AddressDataOnDemand.setZipCode(Address obj, int index) {
        String zipCode = "zipCode_" + index;
        if (zipCode.length() > 20) {
            zipCode = zipCode.substring(0, 20);
        }
        obj.setZipCode(zipCode);
    }
    
    public Address AddressDataOnDemand.getSpecificAddress(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Address obj = data.get(index);
        Long id = obj.getId();
        return Address.findAddress(id);
    }
    
    public Address AddressDataOnDemand.getRandomAddress() {
        init();
        Address obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Address.findAddress(id);
    }
    
    public boolean AddressDataOnDemand.modifyAddress(Address obj) {
        return false;
    }
    
    public void AddressDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Address.findAddressEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Address' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Address>();
        for (int i = 0; i < 10; i++) {
            Address obj = getNewTransientAddress(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}