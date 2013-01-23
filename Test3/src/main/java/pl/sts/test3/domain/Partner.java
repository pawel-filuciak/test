package pl.sts.test3.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
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
public class Partner {

    @NotNull
    @Size(max = 50)
    private String nazwa;

    private Boolean akcjonariusz;

    private Double wartosc;

    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "partner")
    private Set<Projekt> projekty = new HashSet<Projekt>();
}
