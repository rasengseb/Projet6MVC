package com.mvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/accueil")
@Transactional(propagation = Propagation.REQUIRES_NEW)
@SessionAttributes("session")
public class AccueilController {

    public static final Logger LOG = LoggerFactory.getLogger((AccueilController.class));

    @GetMapping
    public String showFormForAdd(Model model){
        LOG.debug("inside show accueil");
        return "Accueil";
    }

    @GetMapping("/profile")
    public String showProfile(){
        return "/profile";
    }
}
