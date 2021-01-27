package com.mvc.service;

import com.mvc.entity.Adresse;
import com.mvc.exception.RessourceNotFoundException;

public interface AdresseService {

    void saveAdresse(Adresse adresse);

    Adresse getAdresse(Integer id) throws RessourceNotFoundException;

}
