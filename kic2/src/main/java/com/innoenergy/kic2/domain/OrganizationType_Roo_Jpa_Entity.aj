// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.domain;

import com.innoenergy.kic2.domain.OrganizationType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect OrganizationType_Roo_Jpa_Entity {
    
    declare @type: OrganizationType: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long OrganizationType.id;
    
    @Version
    @Column(name = "version")
    private Integer OrganizationType.version;
    
    public Long OrganizationType.getId() {
        return this.id;
    }
    
    public void OrganizationType.setId(Long id) {
        this.id = id;
    }
    
    public Integer OrganizationType.getVersion() {
        return this.version;
    }
    
    public void OrganizationType.setVersion(Integer version) {
        this.version = version;
    }
    
}
