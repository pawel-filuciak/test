package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.KicUnit;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/kicunits")
@Controller
@RooWebScaffold(path = "kicunits", formBackingObject = KicUnit.class)
public class KicUnitController {
}
