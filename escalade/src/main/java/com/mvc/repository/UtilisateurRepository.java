package com.mvc.repository;

import com.mvc.entity.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository("utilisateurRepository")
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {


}
