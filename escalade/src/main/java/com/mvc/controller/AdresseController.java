package com.mvc.controller;

import com.mvc.entity.Adresse;
import com.mvc.service.AdresseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adresse")
@Transactional(propagation = Propagation.REQUIRES_NEW)
public class AdresseController {

    private static final Logger LOG = LoggerFactory.getLogger(AdresseController.class);

    @Autowired
    private AdresseService adresseService;

    @GetMapping
    public String showFormForAdd(Model model){
        LOG.debug("inside show adresse-form handler method");
        Adresse adresse = new Adresse();
        model.addAttribute("adresse", adresse);
        return "adresse-form";
    }

    @PostMapping("/saveAdresse")
    public String saveAdresse(@ModelAttribute("adresse")Adresse adresse){
        adresseService.saveAdresse(adresse);
        return "/adresse";
    }

}
