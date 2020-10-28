package com.mvc.service;

import com.mvc.entity.Connexion;
import com.mvc.entity.Utilisateur;
import com.mvc.repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.MANDATORY)
public class UtilisateurServiceImpl implements UtilisateurService {


  @Autowired
  private UtilisateurRepository utilisateurRepository;


    @Override
    @Transactional
    public void saveUtilisateur(Utilisateur utilisateur) {
        utilisateurRepository.save(utilisateur);
    }

    @Override
    public Utilisateur getUtilisateur(Connexion connexion){
        return utilisateurRepository.getByPseudoAndMdp(connexion.getCpseudo(), connexion.getCmdp());
    }

}
