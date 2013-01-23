// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.domain;

import com.innoenergy.kic2.domain.Partner;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Partner_Roo_Jpa_ActiveRecord {
    
    public static long Partner.countPartners() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Partner o", Long.class).getSingleResult();
    }
    
    public static List<Partner> Partner.findAllPartners() {
        return entityManager().createQuery("SELECT o FROM Partner o", Partner.class).getResultList();
    }
    
    public static Partner Partner.findPartner(Long id) {
        if (id == null) return null;
        return entityManager().find(Partner.class, id);
    }
    
    public static List<Partner> Partner.findPartnerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Partner o", Partner.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Partner Partner.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Partner merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}