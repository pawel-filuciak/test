package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.TradeStyle;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tradestyles")
@Controller
@RooWebScaffold(path = "tradestyles", formBackingObject = TradeStyle.class)
public class TradeStyleController {
}
