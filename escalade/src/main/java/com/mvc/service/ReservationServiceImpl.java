package com.mvc.service;

import com.mvc.entity.Reservation;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.MANDATORY)
public class ReservationServiceImpl implements ReservationService{

    @Autowired
    private ReservationRepository reservationRepository;


    @Override
    public void saveReservation(Reservation reservation) {
        reservationRepository.save(reservation);
    }

    @Override
    public Reservation getReservation(int id) throws RessourceNotFoundException {
        return reservationRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id)
        );
    }

    @Override
    public List getAllByUtilisateur(Utilisateur utilisateur) throws RessourceNotFoundException {
        return reservationRepository.getAllByUtilisateur(utilisateur);
    }


}
