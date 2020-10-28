package com.mvc.service;

import com.mvc.entity.Voie;
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
}
