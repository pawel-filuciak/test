package com.innoenergy.kic2.domain;

import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
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
}
