// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.Address;
import com.innoenergy.kic2.domain.Firm;
import com.innoenergy.kic2.domain.KicUnit;
import com.innoenergy.kic2.domain.OrganizationType;
import com.innoenergy.kic2.domain.TradeStyle;
import com.innoenergy.kic2.web.FirmController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect FirmController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String FirmController.create(@Valid Firm firm, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, firm);
            return "firms/create";
        }
        uiModel.asMap().clear();
        firm.persist();
        return "redirect:/firms/" + encodeUrlPathSegment(firm.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String FirmController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Firm());
        return "firms/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String FirmController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("firm", Firm.findFirm(id));
        uiModel.addAttribute("itemId", id);
        return "firms/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String FirmController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("firms", Firm.findFirmEntries(firstResult, sizeNo));
            float nrOfPages = (float) Firm.countFirms() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("firms", Firm.findAllFirms());
        }
        return "firms/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String FirmController.update(@Valid Firm firm, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, firm);
            return "firms/update";
        }
        uiModel.asMap().clear();
        firm.merge();
        return "redirect:/firms/" + encodeUrlPathSegment(firm.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String FirmController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Firm.findFirm(id));
        return "firms/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String FirmController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Firm firm = Firm.findFirm(id);
        firm.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/firms";
    }
    
    void FirmController.populateEditForm(Model uiModel, Firm firm) {
        uiModel.addAttribute("firm", firm);
        uiModel.addAttribute("addresses", Address.findAllAddresses());
        uiModel.addAttribute("kicunits", KicUnit.findAllKicUnits());
        uiModel.addAttribute("organizationtypes", OrganizationType.findAllOrganizationTypes());
        uiModel.addAttribute("tradestyles", TradeStyle.findAllTradeStyles());
    }
    
    String FirmController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
