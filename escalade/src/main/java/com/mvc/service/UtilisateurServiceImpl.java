package com.mvc.service;

import com.mvc.entity.Connexion;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UtilisateurServiceImpl implements UtilisateurService {


  @Autowired
  private UtilisateurRepository utilisateurRepository;


    @Override
    @Transactional
    public void saveUtilisateur(Utilisateur utilisateur) {
        utilisateurRepository.save(utilisateur);
    }

    @Override
    public Utilisateur getUtilisateur(Connexion connexion) throws RessourceNotFoundException {
        return utilisateurRepository.findOne(connexion).orElseThrow(
                () -> new RessourceNotFoundException(connexion));
    }

    //@Override
    @Transactional
    public Utilisateur getUtilisateur(int id) throws RessourceNotFoundException {
        return utilisateurRepository.findAll(Specification.where).orElseThrow(
                () -> new RessourceNotFoundException(id));
    }

}
