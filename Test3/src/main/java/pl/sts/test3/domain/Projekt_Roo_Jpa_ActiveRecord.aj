// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.sts.test3.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import pl.sts.test3.domain.Projekt;

privileged aspect Projekt_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Projekt.entityManager;
    
    public static final EntityManager Projekt.entityManager() {
        EntityManager em = new Projekt().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Projekt.countProjekts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Projekt o", Long.class).getSingleResult();
    }
    
    public static List<Projekt> Projekt.findAllProjekts() {
        return entityManager().createQuery("SELECT o FROM Projekt o", Projekt.class).getResultList();
    }
    
    public static Projekt Projekt.findProjekt(Long id) {
        if (id == null) return null;
        return entityManager().find(Projekt.class, id);
    }
    
    public static List<Projekt> Projekt.findProjektEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Projekt o", Projekt.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Projekt.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Projekt.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Projekt attached = Projekt.findProjekt(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Projekt.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Projekt.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Projekt Projekt.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Projekt merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
