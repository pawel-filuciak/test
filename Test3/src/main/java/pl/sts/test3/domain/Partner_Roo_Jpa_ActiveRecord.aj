// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.sts.test3.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import pl.sts.test3.domain.Partner;

privileged aspect Partner_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Partner.entityManager;
    
    public static final EntityManager Partner.entityManager() {
        EntityManager em = new Partner().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
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
    public void Partner.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Partner.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Partner attached = Partner.findPartner(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Partner.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Partner.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Partner Partner.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Partner merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
