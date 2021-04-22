package com.mvc.service;

import com.mvc.entity.Reservation;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;

import java.util.List;

public interface ReservationService {

    void saveReservation(Reservation reservation);

    Reservation getReservation(int id) throws RessourceNotFoundException;

    List getAllByUtilisateur(Utilisateur utilisateur) throws RessourceNotFoundException;
}
