package com.mvc.controller;

import com.mvc.entity.Voie;
import com.mvc.service.VoieService;
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

    @PostMapping("/saveVoie")
    public String saveVoie(@ModelAttribute("voie") Voie voie){
        voieService.saveVoie(voie);
        return "redirect:/voie";
    }
}
