package com.mvc.repository;

import com.mvc.entity.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

    public Utilisateur getByPseudoAndMdp(String pseudo, String mdp);
}
