package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.Firm;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/firms")
@Controller
@RooWebScaffold(path = "firms", formBackingObject = Firm.class)
@RooWebJson(jsonObject = Firm.class)
public class FirmController {
}
