package com.mvc.service;

import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import sun.nio.ch.Util;

import java.util.List;

public interface UtilisateurService {

    public List <Utilisateur> getUtilisateurs();

    public void saveUtilisateur(Utilisateur utilisateur);

    public Utilisateur getUtilisateur(int id) throws RessourceNotFoundException;

    public void deleteUtilisateur(int id) throws RessourceNotFoundException;
}
