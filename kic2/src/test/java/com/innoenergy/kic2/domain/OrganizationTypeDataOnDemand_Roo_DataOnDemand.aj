// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.domain;

import com.innoenergy.kic2.domain.OrganizationType;
import com.innoenergy.kic2.domain.OrganizationTypeDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect OrganizationTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: OrganizationTypeDataOnDemand: @Component;
    
    private Random OrganizationTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<OrganizationType> OrganizationTypeDataOnDemand.data;
    
    public OrganizationType OrganizationTypeDataOnDemand.getNewTransientOrganizationType(int index) {
        OrganizationType obj = new OrganizationType();
        setName(obj, index);
        return obj;
    }
    
    public void OrganizationTypeDataOnDemand.setName(OrganizationType obj, int index) {
        String name = "name_" + index;
        if (name.length() > 200) {
            name = name.substring(0, 200);
        }
        obj.setName(name);
    }
    
    public OrganizationType OrganizationTypeDataOnDemand.getSpecificOrganizationType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        OrganizationType obj = data.get(index);
        Long id = obj.getId();
        return OrganizationType.findOrganizationType(id);
    }
    
    public OrganizationType OrganizationTypeDataOnDemand.getRandomOrganizationType() {
        init();
        OrganizationType obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return OrganizationType.findOrganizationType(id);
    }
    
    public boolean OrganizationTypeDataOnDemand.modifyOrganizationType(OrganizationType obj) {
        return false;
    }
    
    public void OrganizationTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = OrganizationType.findOrganizationTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'OrganizationType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<OrganizationType>();
        for (int i = 0; i < 10; i++) {
            OrganizationType obj = getNewTransientOrganizationType(i);
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
