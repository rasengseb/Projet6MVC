package com.mvc.service;

import com.mvc.entity.Reservation;
import com.mvc.exception.RessourceNotFoundException;

public interface ReservationService {

    void saveReservation(Reservation reservation);

    Reservation getReservation(int id) throws RessourceNotFoundException;
}
