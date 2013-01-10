package pl.sts.test3.web;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.sts.test3.domain.Projekt;

@RequestMapping("/projekts")
@Controller
@RooWebScaffold(path = "projekts", formBackingObject = Projekt.class)
public class ProjektController {
}
