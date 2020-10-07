package com.mvc.controller;

import com.mvc.entity.Secteur;
import com.mvc.service.SecteurService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/secteur")
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
}
