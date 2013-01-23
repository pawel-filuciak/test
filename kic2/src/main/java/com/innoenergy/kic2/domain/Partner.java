package com.innoenergy.kic2.domain;

import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Partner extends Firm {

    private Double indirectCostPercentage;

    @Size(max = 100)
    private String pic;

    @Size(max = 100)
    private String dunsNumber;

    @Size(max = 100)
    private String eitNumber;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar eligibilityDate;

    private Boolean eligibleForEIT;

    private Boolean gpaSigned;

    private Boolean shareHolder;

    private Boolean internalAgreement;

    private Boolean declarationOfHonour;

    private Boolean legalInformationForm;

    private Boolean cfs;
}
