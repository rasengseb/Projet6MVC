package com.mvc.repository;

import com.mvc.entity.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional(propagation = Propagation.MANDATORY)
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

    Utilisateur getByPseudoAndMdp(String pseudo, String mdp);
}
