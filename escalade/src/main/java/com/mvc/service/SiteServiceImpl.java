package com.mvc.service;

import com.mvc.entity.Site;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.SiteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.MANDATORY)
public class SiteServiceImpl implements SiteService {

    @Autowired
    private SiteRepository siteRepository;

    @Override
    public void saveSite(Site site){
        siteRepository.save(site);
    }

    @Override
    public void updateSite(Site modifSite) throws RessourceNotFoundException {
        Site site = siteRepository.findById(modifSite.getId()).orElseThrow(
                () -> new RessourceNotFoundException(modifSite.getId()));
        site.setOfficiel(modifSite.getOfficiel());
        site.setNom(modifSite.getNom());
        siteRepository.save(site);
    }

    @Override
    public List getAllSite() {
        return siteRepository.findAll();
    }

    @Override
    public Site getSite(int id) throws RessourceNotFoundException{
        return siteRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id));
    }

    @Override
    public List<Site> getAllByUtilisateur(Utilisateur utilisateur) {
        return siteRepository.getAllByUtilisateur(utilisateur);
    }

    @Override
    public List recherche(String nom, int nbSecteur, int codePostal) {
        return siteRepository.getAllByNomOrNbSecteurOrAdresse_CodePostalOrderByNom(nom, nbSecteur, codePostal);
    }



}
