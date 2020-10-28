package com.mvc.controller;

import com.mvc.entity.Secteur;
import com.mvc.service.SecteurService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/secteur")
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class SecteurController {

    public static final Logger LOG = LoggerFactory.getLogger(SecteurController.class);

    @Autowired
    private SecteurService secteurService;

    @GetMapping
    public String showFormForAdd(Model model){
        LOG.debug("inside show secteur-form handler method");
        Secteur secteur = new Secteur();
        model.addAttribute("secteur", secteur);
        return "secteur-form";
    }

    @PostMapping("/saveSecteur")
    public String saveSecteur(@ModelAttribute("secteur") Secteur secteur, @RequestParam("siteId") Integer id){
        secteur.getSite().setId(id);
        secteurService.saveSecteur(secteur);
        return "secteur-form";
    }

    @GetMapping("site/{siteId}/addSecteur")
    public String addSecteur (@PathVariable("siteId") Integer id, Model model){
        Secteur secteur = new Secteur();
        model.addAttribute("secteur", secteur);
        model.addAttribute("siteId", id);
        return "secteur-form";
    }


//    @GetMapping("/getVoies")
//    public String getVoies(Model model, @PathVariable("secteurId") int id) throws RessourceNotFoundException {
//        List voies = secteurService.getVoies(id);
//        model.addAttribute("voies", voies);
//        return "/secteur";
//    }
}
