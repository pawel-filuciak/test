package com.innoenergy.kic2.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Firm {

    @NotNull
    @Size(max = 200)
    private String fullName;

    @NotNull
    @Size(max = 100)
    private String shortName;

    @Size(max = 50)
    private String vatNumber;

    @Size(max = 200)
    private String officialName;

    @Size(max = 200)
    private String officialNameEnglish;

    @Size(max = 500)
    private String comment;

    @ManyToOne
    private OrganizationType organizationType;

    @ManyToOne
    private TradeStyle tradeStyle;

    @ManyToOne
    private KicUnit kicUnit;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Address> addreses = new HashSet<Address>();
}
