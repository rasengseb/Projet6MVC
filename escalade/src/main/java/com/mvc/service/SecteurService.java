package com.mvc.service;

import com.mvc.entity.Secteur;
import com.mvc.exception.RessourceNotFoundException;

import java.util.List;

public interface SecteurService {

    void saveSecteur(Secteur secteur);

    Secteur getSecteur(int id) throws RessourceNotFoundException;

//    List getVoies(int id) throws RessourceNotFoundException;

}
