package com.mvc.controller;


import com.mvc.entity.Site;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.service.SiteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/site")
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class SiteController {

    public static final Logger LOG = LoggerFactory.getLogger(SiteController.class);

    @Autowired
    private SiteService siteService;

    @GetMapping
    public String showFormForAdd(Model model){
        LOG.debug("inside show site-form handler method");
        Site site = new Site();
        model.addAttribute("site", site);
        return "site-form";
    }

    @PostMapping("/saveSite")
    public String saveSite(@ModelAttribute("site")Site site){
        siteService.saveSite(site);
        return "redirect:/site";
    }

    @GetMapping("/getAllSite")
    public String getAllSite(Model model){
        List<Site> sites = siteService.getAllSite();
        model.addAttribute("sites", sites);
        return "site-list";
    }

    @GetMapping("/showSite/{siteId}")
    public String showSite(Model model, @PathVariable("siteId") int id) throws RessourceNotFoundException {
        Site site = siteService.getSite(id);
        model.addAttribute("site", site);
        model.addAttribute("secteur", site.getSecteurs());
        return "affichage-site";
    }
}