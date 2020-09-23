package com.mvc.service;

import com.mvc.entity.Adresse;
import com.mvc.exception.RessourceNotFoundException;

public interface AdresseService {

    public void saveAdresse(Adresse adresse);

    public Adresse getAdresse(Integer id) throws RessourceNotFoundException;
}
