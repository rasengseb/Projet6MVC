package com.mvc.controller;


import com.mvc.entity.*;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.service.CommentaireService;
import com.mvc.service.ReservationService;
import com.mvc.service.SiteService;
import com.mvc.service.TopoService;
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
@RequestMapping("/site")
@Transactional(propagation = Propagation.REQUIRES_NEW)
@SessionAttributes("session")
public class SiteController {

    public static final Logger LOG = LoggerFactory.getLogger(SiteController.class);

    @Autowired
    private SiteService siteService;

    @Autowired
    private CommentaireService commentaireService;

    @Autowired
    private TopoService topoService;

    @Autowired
    private ReservationService reservationService;


    @GetMapping
    public String showFormForAdd(Model model) {
        LOG.debug("inside show site-form handler method");
        Site site = new Site();
        model.addAttribute("site", site);
        return "site-form";
    }

    @PostMapping("/saveSite")
    public String saveSite(@ModelAttribute("site") Site site, @ModelAttribute("session") Session session) {
        site.setUtilisateur(session.getUtilisateur());
        site.setNbSecteur(0);
        siteService.saveSite(site);
        return "redirect:/accueil/profile";
    }

    @GetMapping("/getAllSite")
    public String getAllSite(Model model) {
        List<Site> sites = siteService.getAllSite();
        model.addAttribute("sites", sites);
        return "site-list";
    }

    @Transactional
    @GetMapping("/showSite/{siteId}")
    public String showSite(Model model, @PathVariable("siteId") int id, @ModelAttribute("session") Session session) throws RessourceNotFoundException {
        Site site = siteService.getSite(id);
        Topo topo = new Topo();
        Commentaire commentaire = new Commentaire();
        model.addAttribute("site", site);
        model.addAttribute("secteur", site.getSecteurs());
        model.addAttribute("commentaires", site.getCommentaires());
        model.addAttribute("commentaire", commentaire);
        model.addAttribute("user", session.getUtilisateur());
        model.addAttribute("topo", topo);
        return "affichage-site";
    }

    @PostMapping("/saveCommentaire/{siteId}")
    public String saveCommentaire(@ModelAttribute("commentaire") Commentaire commentaire, @PathVariable("siteId") int id, @ModelAttribute("session") Session session) throws RessourceNotFoundException {
        commentaire.setUtilisateur(session.getUtilisateur());
        Site site = siteService.getSite(id);
        commentaire.setSite(site);
        commentaireService.saveCommentaire(commentaire);
        return "redirect:/site/showSite/{siteId}";
    }

    @PostMapping("/saveTopo/{siteId}")
    public String saveTopo(@ModelAttribute("topo") Topo topo, @PathVariable("siteId") int id, @ModelAttribute("session") Session session) throws RessourceNotFoundException {
        Site site = siteService.getSite(id);
        topo.setSite(site);
        topo.setUtilisateur(session.getUtilisateur());
        topoService.saveTopo(topo);
        return "redirect:/site/showSite/{siteId}";
    }

    @GetMapping("/showTopo/{siteId}")
        public String showTopo(Model model, @PathVariable("siteId") int id){
        model.addAttribute("siteId", id);
        Topo topo = new Topo();
        model.addAttribute("topo", topo);
        return "topo-form";
    }

    @GetMapping("/affichageTopo/{topoId}")
    public String afficherTopo(Model model, @PathVariable("topoId") int id, @ModelAttribute("session") Session session) throws RessourceNotFoundException {
        model.addAttribute("session", session);
        Topo topo = topoService.getTopo(id);
        Reservation reservation = new Reservation();
        model.addAttribute("reservation", reservation);
        model.addAttribute("topo", topo);
        return "affichage-topo";
    }

    @PostMapping("/reservation/{topoId}")
    public String reserverTopo (@PathVariable("topoId") int id, @ModelAttribute("session") Session session, @ModelAttribute("reservation")Reservation reservation) throws RessourceNotFoundException {
        reservation.setUtilisateur(session.getUtilisateur());
        reservation.setTopo(topoService.getTopo(id));
        reservation.setStatut(null);
        reservationService.saveReservation(reservation);
        return "redirect:/site/affichageTopo/{topoId}";
    }

    @PostMapping("/modifSite/{siteId}")
    public String modifSite (@ModelAttribute("site") Site site) throws RessourceNotFoundException {
        siteService.updateSite(site);
        return "redirect:/site/showSite/{siteId}";
    }

    @GetMapping("/showModifSite/{siteId}")
    public String showModifSite(Model model, @PathVariable("siteId") int id) throws RessourceNotFoundException {
        model.addAttribute("site", siteService.getSite(id));
        return "modifSite";
    }

    @PostMapping("/deleteCommentaire/{commentaireId}/{siteId}")
    public String deleteCommentaire(@ModelAttribute("commentaireId")int id) throws RessourceNotFoundException {
        commentaireService.deleteCommentaire(id);
        return "redirect:/site/showSite/{siteId}";
    }

    @PostMapping("/updateCommentaire/{siteId}/{commentaireId}")
    public String updateCommentaire(@RequestParam("commentaire")String commentaire, @PathVariable("commentaireId") int id) throws RessourceNotFoundException {
        commentaireService.update(commentaire, id);
        return "redirect:/site/showSite/{siteId}";
    }
}