package com.mvc.controller;

import com.mvc.entity.Adresse;
import com.mvc.service.AdresseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adresse")
public class AdresseController {

    private static final Logger LOG = LoggerFactory.getLogger(AdresseController.class);

    @Autowired
    private AdresseService adresseService;

    @GetMapping("/saveAdresse")
    public String saveAdresse(@ModelAttribute("adresse")Adresse adresse){
        adresseService.saveAdresse(adresse);
        return "/adresse";
    }

}
