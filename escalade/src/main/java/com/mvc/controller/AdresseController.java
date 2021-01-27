package com.mvc.controller;

import com.mvc.entity.Adresse;
import com.mvc.entity.Secteur;
import com.mvc.entity.Site;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.service.AdresseService;
import com.mvc.service.SiteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/adresse")
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class AdresseController {

    private static final Logger LOG = LoggerFactory.getLogger(AdresseController.class);

    @Autowired
    private AdresseService adresseService;

    @Autowired
    private SiteService siteService;

    @GetMapping
    public String showFormForAdd(Model model){
        LOG.debug("inside show adresse-form handler method");
        Adresse adresse = new Adresse();
        model.addAttribute("adresse", adresse);
        return "adresse-form";
    }

    @PostMapping("/saveAdresse/{siteId}")
    public String saveAdresse(@ModelAttribute("adresse")Adresse adresse, @RequestParam("siteId") Integer id) throws RessourceNotFoundException {
        Site site = siteService.getSite(id);
        site.setAdresse(adresse);
        adresse.setSite(site);
        adresseService.saveAdresse(adresse);
        return "redirect: /site/showSite/{siteId}";
    }

    @GetMapping("{siteId}/addAdresse")
    public String addAdresse (@PathVariable("siteId") Integer id, Model model){
        Adresse adresse = new Adresse();
        model.addAttribute("adresse", adresse);
        model.addAttribute("siteId", id);
        return "adresse-form";
    }

    @GetMapping("/showModifAdresse/{adresseId}")
    public String showModifAdresse (@PathVariable("adresseId") int id, Model model) throws RessourceNotFoundException {
        model.addAttribute("adresse", adresseService.getAdresse(id));
        return "modifAdresse";
    }

    @PostMapping("/updateAdresse/{siteId}")
    public String updateAdresse (Adresse adresse){
        adresseService.saveAdresse(adresse);
        return "redirect: /site/showSite/{siteId}";
    }

}
