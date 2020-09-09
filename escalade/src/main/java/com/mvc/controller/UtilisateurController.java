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

import java.util.List;

@Controller
@RequestMapping("/utilisateur")
public class UtilisateurController {

    private static final Logger LOG = LoggerFactory.getLogger(UtilisateurController.class);

    @Autowired
    private UtilisateurService utilisateurService;

    @GetMapping("/List")
    public String listUtilisateur(Model model){
        List<Utilisateur> utilisateurs = utilisateurService.getUtilisateurs();
        model.addAttribute("utilisateur", utilisateurs);
        return "list-utilisateur";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model model){
        LOG.debug("inside show utilisateur-form handler method");
        Utilisateur utilisateur = new Utilisateur();
        model.addAttribute("utilisateur", utilisateur);
        return "utilisateur-form";
    }

    @PostMapping("/saveUtilisateur")
    public String saveUtilisateur(@ModelAttribute("utilisateur") Utilisateur theUtilisateur) {
        utilisateurService.saveUtilisateur(theUtilisateur);
        return "redirect:/utilisateur/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("utilisateurId") int id, Model theModel) throws RessourceNotFoundException {
        Utilisateur utilisateur = utilisateurService.getUtilisateur(id);
        theModel.addAttribute("utilisateur", utilisateur);
        return "utilisateur-form";
    }

    @GetMapping("/delete")
    public String deleteUtilisateur(@RequestParam("utilisateurId") int id) throws RessourceNotFoundException {
        utilisateurService.deleteUtilisateur(id);
        return "redirect:/utilisateur/list";
    }
}
