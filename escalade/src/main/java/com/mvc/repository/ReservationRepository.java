package com.mvc.repository;

import com.mvc.entity.Reservation;
import com.mvc.entity.Utilisateur;
import com.mvc.exception.RessourceNotFoundException;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional(propagation = Propagation.MANDATORY)
public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

    List getAllByUtilisateur(Utilisateur utilisateur);
}
