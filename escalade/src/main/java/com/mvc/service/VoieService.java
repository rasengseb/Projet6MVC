package com.mvc.service;

import com.mvc.entity.Voie;
import com.mvc.exception.RessourceNotFoundException;

public interface VoieService {

    void saveVoie (Voie voie);
    Voie getVoie(int id) throws RessourceNotFoundException;
    void update(Voie voie) throws RessourceNotFoundException;
}
