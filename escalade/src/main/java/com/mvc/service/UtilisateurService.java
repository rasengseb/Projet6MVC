package com.mvc.service;

import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;


public interface UtilisateurService {


    public void saveUtilisateur(Utilisateur utilisateur);

    public Utilisateur getUtilisateur(String pseudo, String mdp) throws RessourceNotFoundException;


}
