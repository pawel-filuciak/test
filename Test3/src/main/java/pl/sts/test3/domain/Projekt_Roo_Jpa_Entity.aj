// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.sts.test3.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import pl.sts.test3.domain.Projekt;

privileged aspect Projekt_Roo_Jpa_Entity {
    
    declare @type: Projekt: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Projekt.id;
    
    @Version
    @Column(name = "version")
    private Integer Projekt.version;
    
    public Long Projekt.getId() {
        return this.id;
    }
    
    public void Projekt.setId(Long id) {
        this.id = id;
    }
    
    public Integer Projekt.getVersion() {
        return this.version;
    }
    
    public void Projekt.setVersion(Integer version) {
        this.version = version;
    }
    
}