// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.Address;
import com.innoenergy.kic2.domain.Country;
import com.innoenergy.kic2.domain.Firm;
import com.innoenergy.kic2.domain.KicUnit;
import com.innoenergy.kic2.domain.OrganizationType;
import com.innoenergy.kic2.domain.Partner;
import com.innoenergy.kic2.domain.TradeStyle;
import com.innoenergy.kic2.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Address, String> ApplicationConversionServiceFactoryBean.getAddressToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.innoenergy.kic2.domain.Address, java.lang.String>() {
            public String convert(Address address) {
                return new StringBuilder().append(address.getAddress()).append(' ').append(address.getCity()).append(' ').append(address.getZipCode()).append(' ').append(address.getLatitude()).toString();
            }
        };
    }
    
    public Converter<Long, Address> ApplicationConversionServiceFactoryBean.getIdToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.innoenergy.kic2.domain.Address>() {
            public com.innoenergy.kic2.domain.Address convert(java.lang.Long id) {
                return Address.findAddress(id);
            }
        };
    }
    
    public Converter<String, Address> ApplicationConversionServiceFactoryBean.getStringToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.innoenergy.kic2.domain.Address>() {
            public com.innoenergy.kic2.domain.Address convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Address.class);
            }
        };
    }
    
    public Converter<Country, String> ApplicationConversionServiceFactoryBean.getCountryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.innoenergy.kic2.domain.Country, java.lang.String>() {
            public String convert(Country country) {
                return new StringBuilder().append(country.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Country> ApplicationConversionServiceFactoryBean.getIdToCountryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.innoenergy.kic2.domain.Country>() {
            public com.innoenergy.kic2.domain.Country convert(java.lang.Long id) {
                return Country.findCountry(id);
            }
        };
    }
    
    public Converter<String, Country> ApplicationConversionServiceFactoryBean.getStringToCountryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.innoenergy.kic2.domain.Country>() {
            public com.innoenergy.kic2.domain.Country convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Country.class);
            }
        };
    }
    
    public Converter<Firm, String> ApplicationConversionServiceFactoryBean.getFirmToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.innoenergy.kic2.domain.Firm, java.lang.String>() {
            public String convert(Firm firm) {
                return new StringBuilder().append(firm.getFullName()).append(' ').append(firm.getShortName()).append(' ').append(firm.getVatNumber()).append(' ').append(firm.getOfficialName()).toString();
            }
        };
    }
    
    public Converter<Long, Firm> ApplicationConversionServiceFactoryBean.getIdToFirmConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.innoenergy.kic2.domain.Firm>() {
            public com.innoenergy.kic2.domain.Firm convert(java.lang.Long id) {
                return Firm.findFirm(id);
            }
        };
    }
    
    public Converter<String, Firm> ApplicationConversionServiceFactoryBean.getStringToFirmConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.innoenergy.kic2.domain.Firm>() {
            public com.innoenergy.kic2.domain.Firm convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Firm.class);
            }
        };
    }
    
    public Converter<KicUnit, String> ApplicationConversionServiceFactoryBean.getKicUnitToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.innoenergy.kic2.domain.KicUnit, java.lang.String>() {
            public String convert(KicUnit kicUnit) {
                return new StringBuilder().append(kicUnit.getName()).toString();
            }
        };
    }
    
    public Converter<Long, KicUnit> ApplicationConversionServiceFactoryBean.getIdToKicUnitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.innoenergy.kic2.domain.KicUnit>() {
            public com.innoenergy.kic2.domain.KicUnit convert(java.lang.Long id) {
                return KicUnit.findKicUnit(id);
            }
        };
    }
    
    public Converter<String, KicUnit> ApplicationConversionServiceFactoryBean.getStringToKicUnitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.innoenergy.kic2.domain.KicUnit>() {
            public com.innoenergy.kic2.domain.KicUnit convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), KicUnit.class);
            }
        };
    }
    
    public Converter<OrganizationType, String> ApplicationConversionServiceFactoryBean.getOrganizationTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.innoenergy.kic2.domain.OrganizationType, java.lang.String>() {
            public String convert(OrganizationType organizationType) {
                return new StringBuilder().append(organizationType.getName()).toString();
            }
        };
    }
    
    public Converter<Long, OrganizationType> ApplicationConversionServiceFactoryBean.getIdToOrganizationTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.innoenergy.kic2.domain.OrganizationType>() {
            public com.innoenergy.kic2.domain.OrganizationType convert(java.lang.Long id) {
                return OrganizationType.findOrganizationType(id);
            }
        };
    }
    
    public Converter<String, OrganizationType> ApplicationConversionServiceFactoryBean.getStringToOrganizationTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.innoenergy.kic2.domain.OrganizationType>() {
            public com.innoenergy.kic2.domain.OrganizationType convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), OrganizationType.class);
            }
        };
    }
    
    public Converter<Partner, String> ApplicationConversionServiceFactoryBean.getPartnerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.innoenergy.kic2.domain.Partner, java.lang.String>() {
            public String convert(Partner partner) {
                return new StringBuilder().append(partner.getFullName()).append(' ').append(partner.getShortName()).append(' ').append(partner.getVatNumber()).append(' ').append(partner.getOfficialName()).toString();
            }
        };
    }
    
    public Converter<Long, Partner> ApplicationConversionServiceFactoryBean.getIdToPartnerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.innoenergy.kic2.domain.Partner>() {
            public com.innoenergy.kic2.domain.Partner convert(java.lang.Long id) {
                return Partner.findPartner(id);
            }
        };
    }
    
    public Converter<String, Partner> ApplicationConversionServiceFactoryBean.getStringToPartnerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.innoenergy.kic2.domain.Partner>() {
            public com.innoenergy.kic2.domain.Partner convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Partner.class);
            }
        };
    }
    
    public Converter<TradeStyle, String> ApplicationConversionServiceFactoryBean.getTradeStyleToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.innoenergy.kic2.domain.TradeStyle, java.lang.String>() {
            public String convert(TradeStyle tradeStyle) {
                return new StringBuilder().append(tradeStyle.getName()).toString();
            }
        };
    }
    
    public Converter<Long, TradeStyle> ApplicationConversionServiceFactoryBean.getIdToTradeStyleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.innoenergy.kic2.domain.TradeStyle>() {
            public com.innoenergy.kic2.domain.TradeStyle convert(java.lang.Long id) {
                return TradeStyle.findTradeStyle(id);
            }
        };
    }
    
    public Converter<String, TradeStyle> ApplicationConversionServiceFactoryBean.getStringToTradeStyleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.innoenergy.kic2.domain.TradeStyle>() {
            public com.innoenergy.kic2.domain.TradeStyle convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), TradeStyle.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAddressToStringConverter());
        registry.addConverter(getIdToAddressConverter());
        registry.addConverter(getStringToAddressConverter());
        registry.addConverter(getCountryToStringConverter());
        registry.addConverter(getIdToCountryConverter());
        registry.addConverter(getStringToCountryConverter());
        registry.addConverter(getFirmToStringConverter());
        registry.addConverter(getIdToFirmConverter());
        registry.addConverter(getStringToFirmConverter());
        registry.addConverter(getKicUnitToStringConverter());
        registry.addConverter(getIdToKicUnitConverter());
        registry.addConverter(getStringToKicUnitConverter());
        registry.addConverter(getOrganizationTypeToStringConverter());
        registry.addConverter(getIdToOrganizationTypeConverter());
        registry.addConverter(getStringToOrganizationTypeConverter());
        registry.addConverter(getPartnerToStringConverter());
        registry.addConverter(getIdToPartnerConverter());
        registry.addConverter(getStringToPartnerConverter());
        registry.addConverter(getTradeStyleToStringConverter());
        registry.addConverter(getIdToTradeStyleConverter());
        registry.addConverter(getStringToTradeStyleConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
