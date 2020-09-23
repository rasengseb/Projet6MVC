package com.mvc.controller;

import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.service.UtilisateurService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/utilisateur")
public class UtilisateurController {

    private static final Logger LOG = LoggerFactory.getLogger(UtilisateurController.class);

    @Autowired
    private UtilisateurService utilisateurService;

    @GetMapping("/showForm")
    public String showFormForAdd(Model model){
        LOG.debug("inside show utilisateur-form handler method");
        Utilisateur utilisateur = new Utilisateur();
        model.addAttribute("utilisateur", utilisateur);
        return "utilisateur-form";
    }

    @PostMapping("/connexion")
    public String connexion(@ModelAttribute("utilisateur") Utilisateur utilisateur) throws RessourceNotFoundException {
        utilisateurService.getUtilisateur(utilisateur.getPseudo(), utilisateur.getMdp());
        return "/utilisateur";
    }

    @PostMapping("/saveUtilisateur")
    public String saveUtilisateur(@ModelAttribute("utilisateur") Utilisateur theUtilisateur) {
        utilisateurService.saveUtilisateur(theUtilisateur);
        return "/utilisateur";
    }


}
