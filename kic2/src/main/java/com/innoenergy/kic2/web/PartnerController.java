package com.innoenergy.kic2.web;

import java.util.List;

import com.innoenergy.kic2.domain.Address;
import com.innoenergy.kic2.domain.Partner;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/partners")
@Controller
@RooWebScaffold(path = "partners", formBackingObject = Partner.class)
@RooWebJson(jsonObject = Partner.class)
public class PartnerController 
{
    @RequestMapping(produces = "text/html")
    public String list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) 
    {
        return "partners/list";
    }
    
    @RequestMapping(value = "/{id}", params = "addresses", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> listAddresses(@PathVariable("id") Long id) {
    	List<Address> result = Address.findAllAddressesRelatedToFirm(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (result == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(Address.toJsonArray(result), headers, HttpStatus.OK);
    }
}
