package pl.sts.test3.web;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.sts.test3.domain.Partner;

@RequestMapping("/partners")
@Controller
@RooWebScaffold(path = "partners", formBackingObject = Partner.class)
public class PartnerController {
}
