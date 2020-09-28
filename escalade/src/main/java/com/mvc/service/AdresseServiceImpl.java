package com.mvc.service;

import com.mvc.entity.Adresse;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.AdresseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdresseServiceImpl implements AdresseService {


    @Autowired
    private AdresseRepository adresseRepository;

    @Override
    public void saveAdresse(Adresse adresse) {
        adresseRepository.save(adresse);
    }

    @Override
    public Adresse getAdresse(Integer id) throws RessourceNotFoundException {
        return adresseRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id));
    }
}
