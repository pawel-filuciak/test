// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.domain;

import com.innoenergy.kic2.domain.TradeStyle;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TradeStyle_Roo_Jpa_Entity {
    
    declare @type: TradeStyle: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TradeStyle.id;
    
    @Version
    @Column(name = "version")
    private Integer TradeStyle.version;
    
    public Long TradeStyle.getId() {
        return this.id;
    }
    
    public void TradeStyle.setId(Long id) {
        this.id = id;
    }
    
    public Integer TradeStyle.getVersion() {
        return this.version;
    }
    
    public void TradeStyle.setVersion(Integer version) {
        this.version = version;
    }
    
}
