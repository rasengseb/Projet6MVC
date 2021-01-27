package com.mvc.service;

import com.mvc.entity.Secteur;
import com.mvc.exception.RessourceNotFoundException;

import java.util.List;

public interface SecteurService {

    void saveSecteur(Secteur secteur);

    void update (Secteur secteur) throws RessourceNotFoundException;

    Secteur getSecteur(int id) throws RessourceNotFoundException;

}
