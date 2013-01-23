// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pl.sts.test3.domain;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import pl.sts.test3.domain.Partner;

privileged aspect Partner_Roo_Json {
    
    public String Partner.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Partner Partner.fromJsonToPartner(String json) {
        return new JSONDeserializer<Partner>().use(null, Partner.class).deserialize(json);
    }
    
    public static String Partner.toJsonArray(Collection<Partner> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Partner> Partner.fromJsonArrayToPartners(String json) {
        return new JSONDeserializer<List<Partner>>().use(null, ArrayList.class).use("values", Partner.class).deserialize(json);
    }
    
}