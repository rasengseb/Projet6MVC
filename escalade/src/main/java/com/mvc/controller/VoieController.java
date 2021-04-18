package com.mvc.controller;

import com.mvc.entity.Secteur;
import com.mvc.entity.Session;
import com.mvc.entity.Voie;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.service.VoieService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.persistence.criteria.CriteriaBuilder;

@Controller
@RequestMapping("/voie")
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class VoieController {

    public static final Logger LOG = LoggerFactory.getLogger(VoieController.class);

    @Autowired
    private VoieService voieService;

    @GetMapping
    public String showFormForAdd(Model model){
        LOG.debug("inside show voie-form handler method");
        Voie voie = new Voie();
        model.addAttribute("voie", voie);
        return "voie-form";
    }

    @PostMapping("/saveVoie/{secteurId}")
    public String saveVoie(@ModelAttribute("voie") Voie voie, @PathVariable("secteurId")Integer id){
        Secteur secteur = new Secteur();
        secteur.setId(id);
        voie.setSecteur(secteur);
        voieService.saveVoie(voie);
        return "redirect:/secteur/showSecteur/{secteurId}";
    }

    @GetMapping("secteur/{secteurId}/addVoie")
    public String addVoie(@PathVariable("secteurId") int id, Model model){
        Voie voie = new Voie();
        model.addAttribute("voie", voie);
        model.addAttribute("secteurId", id);
        return "voie-form";
    }

    @Transactional
    @GetMapping("/showVoie/{voieId}")
    public String showVoie(Model model, @PathVariable("voieId") int id) throws RessourceNotFoundException {
        Voie voie = voieService.getVoie(id);
        model.addAttribute("voie", voie);

        return "affichage-voie";
    }

    @GetMapping("/showModifVoie/{voieId}")
    public String showModifVoie(Model model, @PathVariable("voieId") int id) throws RessourceNotFoundException {
        Voie voie = voieService.getVoie(id);
        model.addAttribute("voie", voie);
        return "modifVoies";
    }

    @PostMapping("updateVoie/{secteurId}")
    public String updateVoie(@PathVariable("secteurId") int id, @ModelAttribute("voie") Voie voie) throws RessourceNotFoundException {
        voieService.update(voie);
        return "redirect:/secteur/showSecteur/{secteurId}";
    }
}
