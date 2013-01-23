package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.Partner;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
}
