package com.innoenergy.kic2.domain;

import java.util.List;

import javax.persistence.ManyToOne;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Address {

    @Size(max = 100)
    private String address;

    @Size(max = 100)
    private String city;

    @Size(max = 20)
    private String zipCode;

    @Size(max = 100)
    private String latitude;

    @Size(max = 100)
    private String longitude;

    @Size(max = 500)
    private String comment;

    @ManyToOne
    private Country country;

    @NotNull
    @ManyToOne
    private Firm firm;
    
    public static List<Address> findAllAddressesRelatedToFirm(Long firmId) {
        TypedQuery<Address> createQuery = entityManager().createQuery("SELECT o FROM Address o where o.firm.id=:firmId ", Address.class);
        createQuery.setParameter("firmId", firmId);
		return createQuery.getResultList();
    }    
}
