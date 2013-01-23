// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.domain;

import com.innoenergy.kic2.domain.Address;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Address_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Address.entityManager;
    
    public static final EntityManager Address.entityManager() {
        EntityManager em = new Address().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Address.countAddresses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Address o", Long.class).getSingleResult();
    }
    
    public static List<Address> Address.findAllAddresses() {
        return entityManager().createQuery("SELECT o FROM Address o", Address.class).getResultList();
    }
    
    public static Address Address.findAddress(Long id) {
        if (id == null) return null;
        return entityManager().find(Address.class, id);
    }
    
    public static List<Address> Address.findAddressEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Address o", Address.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Address.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Address.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Address attached = Address.findAddress(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Address.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Address.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Address Address.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Address merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
