package com.mvc.service;

import com.mvc.entity.Secteur;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.SecteurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.MANDATORY)
public class SecteurServiceImpl implements SecteurService{

    @Autowired
    private SecteurRepository secteurRepository;


    @Override
    public void saveSecteur(Secteur secteur) {
        secteurRepository.save(secteur);
    }

    @Override
    public void update(Secteur secteur) throws RessourceNotFoundException {
        Secteur secteur1 = secteurRepository.findById(secteur.getId()).orElseThrow(
                () -> new RessourceNotFoundException(secteur.getId()));

        secteur1.setNumero(secteur.getNumero());
        secteurRepository.save(secteur1);
    }

    @Override
    public Secteur getSecteur(int id) throws RessourceNotFoundException{
        return secteurRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id));
    }

}
