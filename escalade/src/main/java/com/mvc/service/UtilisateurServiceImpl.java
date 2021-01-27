package com.mvc.service;

import com.mvc.entity.Connexion;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
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
    public Utilisateur update(Utilisateur utilisateur) throws RessourceNotFoundException {

        Utilisateur utilisateur1 = utilisateurRepository.findById(utilisateur.getId()).orElseThrow(
                () -> new RessourceNotFoundException(utilisateur.getId())
        );

        utilisateur1.setPseudo(utilisateur.getPseudo());
        utilisateur1.setMdp(utilisateur.getMdp());
        utilisateur1.setPrenom(utilisateur.getPrenom());
        utilisateur1.setNom(utilisateur.getNom());
        utilisateur1.setMail(utilisateur.getMail());

        utilisateurRepository.save(utilisateur1);
        return utilisateur1;
    }

    @Override
    public Utilisateur getUtilisateur(Connexion connexion) {
        return utilisateurRepository.getByPseudoAndMdp(connexion.getCpseudo(), connexion.getCmdp());
    }

}
