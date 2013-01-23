package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.TradeStyle;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/tradestyles")
@Controller
@RooWebScaffold(path = "tradestyles", formBackingObject = TradeStyle.class)
@RooWebJson(jsonObject = TradeStyle.class)
public class TradeStyleController 
{
    @RequestMapping(produces = "text/html")
    public String list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) 
    {
        return "tradestyles/list";
    }	
}
