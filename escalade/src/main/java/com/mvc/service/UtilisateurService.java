package com.mvc.service;

import com.mvc.entity.Connexion;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;


public interface UtilisateurService {


    void saveUtilisateur(Utilisateur utilisateur);

    Utilisateur getUtilisateur(Connexion connexion) throws RessourceNotFoundException;

}
