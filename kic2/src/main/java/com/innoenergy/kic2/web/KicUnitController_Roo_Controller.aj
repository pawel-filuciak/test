// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.innoenergy.kic2.web;

import com.innoenergy.kic2.domain.KicUnit;
import com.innoenergy.kic2.web.KicUnitController;
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

privileged aspect KicUnitController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String KicUnitController.create(@Valid KicUnit kicUnit, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, kicUnit);
            return "kicunits/create";
        }
        uiModel.asMap().clear();
        kicUnit.persist();
        return "redirect:/kicunits/" + encodeUrlPathSegment(kicUnit.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String KicUnitController.createForm(Model uiModel) {
        populateEditForm(uiModel, new KicUnit());
        return "kicunits/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String KicUnitController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("kicunit", KicUnit.findKicUnit(id));
        uiModel.addAttribute("itemId", id);
        return "kicunits/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String KicUnitController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("kicunits", KicUnit.findKicUnitEntries(firstResult, sizeNo));
            float nrOfPages = (float) KicUnit.countKicUnits() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("kicunits", KicUnit.findAllKicUnits());
        }
        return "kicunits/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String KicUnitController.update(@Valid KicUnit kicUnit, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, kicUnit);
            return "kicunits/update";
        }
        uiModel.asMap().clear();
        kicUnit.merge();
        return "redirect:/kicunits/" + encodeUrlPathSegment(kicUnit.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String KicUnitController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, KicUnit.findKicUnit(id));
        return "kicunits/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String KicUnitController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        KicUnit kicUnit = KicUnit.findKicUnit(id);
        kicUnit.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/kicunits";
    }
    
    void KicUnitController.populateEditForm(Model uiModel, KicUnit kicUnit) {
        uiModel.addAttribute("kicUnit", kicUnit);
    }
    
    String KicUnitController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
