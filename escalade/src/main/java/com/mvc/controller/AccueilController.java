package com.mvc.controller;

import com.mvc.entity.*;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.service.ReservationService;
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
@RequestMapping("/accueil")
@Transactional(propagation = Propagation.REQUIRES_NEW)
@SessionAttributes("session")
public class AccueilController {

    public static final Logger LOG = LoggerFactory.getLogger((AccueilController.class));

    @Autowired
    private SiteService siteService;

    @Autowired
    private ReservationService reservationService;

    @ModelAttribute("session")
    public Session addSessionToSessionScope() {
        return new Session();
    }

    @GetMapping
    public String showFormForAdd(Model model) {
        LOG.debug("inside show accueil");
        return "Accueil";
    }

    @GetMapping("/profile")
    public String showProfile(Model model, @ModelAttribute("session") Session session) throws RessourceNotFoundException {
        List<Site> sites = siteService.getAllByUtilisateur(session.getUtilisateur());
        model.addAttribute("sites", sites);
        List<Reservation> reservations = reservationService.getAllByUtilisateur(session.getUtilisateur());
        model.addAttribute("reservations", reservations);
        return "/profile";
    }

    @GetMapping("/showRecherche")
    public String showRecherche(Model model) {
        List sites = siteService.getAllSite();
        Recherche recherche = new Recherche();
        model.addAttribute("recherche", recherche);
        model.addAttribute("sites", sites);
        return "Recherche";
    }

    @GetMapping("/recherche")
    public String recherche(@ModelAttribute("recherche") Recherche recherche, Model model) {
        List sites = siteService.recherche(recherche.getSiteNom(), recherche.getNbSecteur(), recherche.getCodePostal());
        model.addAttribute("sites", sites);
        model.addAttribute("recherche", recherche);
        return "Recherche";
    }

    @GetMapping("/profile/accepterResa/{reservationId}")
    public String validerReservation(@PathVariable("reservationId") int id) throws RessourceNotFoundException {
        Reservation reservation = reservationService.getReservation(id);
        reservation.setStatut(true);
        reservationService.saveReservation(reservation);
        return "/profile";
    }

    @GetMapping("/modifProfile")
    public String showModifProfile(Model model) {
        Utilisateur utilisateur = new Utilisateur();
        model.addAttribute("utilisateur", utilisateur);
        return "modifProfile";
    }

    @GetMapping("/deconnexion")
    public String deconnexion(@ModelAttribute("session") Session session) {
        session.setUtilisateur(new Utilisateur());
        session.setConnect(false);
        return "redirect:/accueil";
    }
}
