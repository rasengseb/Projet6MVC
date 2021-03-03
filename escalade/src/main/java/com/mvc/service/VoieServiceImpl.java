package com.mvc.service;

import com.mvc.entity.Voie;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.VoieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.MANDATORY)
public class VoieServiceImpl implements VoieService{

    @Autowired
    private VoieRepository voieRepository;

    @Override
    public void saveVoie(Voie voie) {
        voieRepository.save(voie);
    }

    @Override
    public Voie getVoie(int id) throws RessourceNotFoundException {
        return voieRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id));
    }

    @Override
    public void update(Voie voie) throws RessourceNotFoundException {
        Voie voie1 = voieRepository.findById(voie.getId()).orElseThrow(
                () -> new RessourceNotFoundException(voie.getId())
        );
        voie1.setCote(voie.getCote());
        voie1.setDescription(voie.getDescription());
        voie1.setLongueur(voie.getLongueur());
        voie1.setNom(voie.getNom());
        voieRepository.save(voie1);
    }
}
