// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.sts.test3.web;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import pl.sts.test3.domain.Partner;
import pl.sts.test3.domain.Projekt;
import pl.sts.test3.web.ApplicationConversionServiceFactoryBean;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Partner, String> ApplicationConversionServiceFactoryBean.getPartnerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<pl.sts.test3.domain.Partner, java.lang.String>() {
            public String convert(Partner partner) {
                return new StringBuilder().append(partner.getNazwa()).append(' ').append(partner.getWartosc()).toString();
            }
        };
    }
    
    public Converter<Long, Partner> ApplicationConversionServiceFactoryBean.getIdToPartnerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, pl.sts.test3.domain.Partner>() {
            public pl.sts.test3.domain.Partner convert(java.lang.Long id) {
                return Partner.findPartner(id);
            }
        };
    }
    
    public Converter<String, Partner> ApplicationConversionServiceFactoryBean.getStringToPartnerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, pl.sts.test3.domain.Partner>() {
            public pl.sts.test3.domain.Partner convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Partner.class);
            }
        };
    }
    
    public Converter<Projekt, String> ApplicationConversionServiceFactoryBean.getProjektToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<pl.sts.test3.domain.Projekt, java.lang.String>() {
            public String convert(Projekt projekt) {
                return new StringBuilder().append(projekt.getNazwa()).append(' ').append(projekt.getTermin()).toString();
            }
        };
    }
    
    public Converter<Long, Projekt> ApplicationConversionServiceFactoryBean.getIdToProjektConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, pl.sts.test3.domain.Projekt>() {
            public pl.sts.test3.domain.Projekt convert(java.lang.Long id) {
                return Projekt.findProjekt(id);
            }
        };
    }
    
    public Converter<String, Projekt> ApplicationConversionServiceFactoryBean.getStringToProjektConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, pl.sts.test3.domain.Projekt>() {
            public pl.sts.test3.domain.Projekt convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Projekt.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getPartnerToStringConverter());
        registry.addConverter(getIdToPartnerConverter());
        registry.addConverter(getStringToPartnerConverter());
        registry.addConverter(getProjektToStringConverter());
        registry.addConverter(getIdToProjektConverter());
        registry.addConverter(getStringToProjektConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
