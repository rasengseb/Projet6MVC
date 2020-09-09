package com.mvc.service;

import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UtilisateurServiceImpl implements UtilisateurService {


    @Autowired
    private UtilisateurRepository utilisateurRepository;


    @Override
    @Transactional
    public List<Utilisateur> getUtilisateurs() {
        return utilisateurRepository.findAll();
    }

    @Override
    @Transactional
    public void saveUtilisateur(Utilisateur utilisateur) {
        utilisateurRepository.save(utilisateur);
    }

    @Override
    @Transactional
    public Utilisateur getUtilisateur(int id) throws RessourceNotFoundException {
        return utilisateurRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteUtilisateur(int id) throws RessourceNotFoundException {
        utilisateurRepository.deleteById(id);
    }
}
