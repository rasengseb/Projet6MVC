package com.mvc.controller;

import com.mvc.entity.Session;
import com.mvc.entity.Site;
import com.mvc.service.SiteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/accueil")
@Transactional(propagation = Propagation.REQUIRES_NEW)
@SessionAttributes("session")
public class AccueilController {

    public static final Logger LOG = LoggerFactory.getLogger((AccueilController.class));

    @Autowired
    private SiteService siteService;

    @ModelAttribute("session")
    public Session addSessionToSessionScope() {
        return new Session();
    }

    @GetMapping
    public String showFormForAdd(Model model){
        LOG.debug("inside show accueil");
        return "Accueil";
    }

    @GetMapping("/profile")
    public String showProfile(Model model, @ModelAttribute("session") Session session){
        List<Site> sites = siteService.getAllByUtilisateur(session.getUtilisateur());
        model.addAttribute("sites", sites);
        return "/profile";
    }
}
