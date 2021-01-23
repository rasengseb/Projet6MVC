package com.mvc.service;

import com.mvc.entity.Site;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;

import java.util.List;

public interface SiteService {

    void saveSite(Site site);

    void updateSite (Site modifSite) throws RessourceNotFoundException;

    List getAllSite();

    Site getSite(int id) throws RessourceNotFoundException;

    List<Site> getAllByUtilisateur(Utilisateur utilisateur);

    List recherche(String nom, int nbSecteur, int codePostal);
}
