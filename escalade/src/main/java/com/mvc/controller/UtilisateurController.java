package com.mvc.controller;

import com.mvc.entity.Connexion;
import com.mvc.entity.Session;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.service.UtilisateurService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/utilisateur")
@Transactional(propagation = Propagation.REQUIRES_NEW)
@SessionAttributes("session")
public class UtilisateurController {

    private static final Logger LOG = LoggerFactory.getLogger(UtilisateurController.class);

    @Autowired
    private UtilisateurService utilisateurService;


    @GetMapping
    public String showFormForAdd(Model model) {
        LOG.debug("inside show utilisateur-form handler method");
        Utilisateur utilisateur = new Utilisateur();
        Connexion connexion = new Connexion();
        model.addAttribute("utilisateur", utilisateur);
        model.addAttribute("connexion", connexion);
        return "utilisateur-form";
    }

    @PostMapping("/connexion")
    public String connexion(@ModelAttribute("connexion") Connexion connexion, @ModelAttribute("session") Session session) throws RessourceNotFoundException {
        session.setUtilisateur(utilisateurService.getUtilisateur(connexion));
        if(session.getUtilisateur() == null){
            return "redirect:/utilisateur";
        }else{
            session.setConnect(true);
            return "redirect:/accueil/profile";
        }
    }

    @PostMapping("/saveUtilisateur")
    public String saveUtilisateur(@ModelAttribute("utilisateur") Utilisateur utilisateur) {
        utilisateurService.saveUtilisateur(utilisateur);
        return "redirect:/utilisateur";
    }

    @PostMapping("/updateUtilisateur")
    public String updateUtilisateur(@ModelAttribute("utilisateur") Utilisateur utilisateur, @ModelAttribute("session") Session session, Model model) throws RessourceNotFoundException {
        utilisateur.setId(session.getUtilisateur().getId());
        session.setUtilisateur(utilisateurService.update(utilisateur));
        model.addAttribute("session", session);
        return "redirect:/accueil/profile";
    }
}
