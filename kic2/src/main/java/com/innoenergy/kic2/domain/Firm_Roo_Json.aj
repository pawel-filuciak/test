// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.domain;

import com.innoenergy.kic2.domain.Firm;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Firm_Roo_Json {
    
    public String Firm.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Firm Firm.fromJsonToFirm(String json) {
        return new JSONDeserializer<Firm>().use(null, Firm.class).deserialize(json);
    }
    
    public static String Firm.toJsonArray(Collection<Firm> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Firm> Firm.fromJsonArrayToFirms(String json) {
        return new JSONDeserializer<List<Firm>>().use(null, ArrayList.class).use("values", Firm.class).deserialize(json);
    }
    
}
