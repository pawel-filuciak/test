package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.OrganizationType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/organizationtypes")
@Controller
@RooWebScaffold(path = "organizationtypes", formBackingObject = OrganizationType.class)
public class OrganizationTypeController {
}
