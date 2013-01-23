package pl.sts.test3.web;

import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.sts.test3.domain.Projekt;

@RequestMapping("/projekts")
@Controller
@RooWebScaffold(path = "projekts", formBackingObject = Projekt.class)
@RooWebJson(jsonObject = Projekt.class)
public class ProjektController 
{
    @RequestMapping(produces = "text/html")
    public String list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {

        return "projekts/list";
    }	
}
