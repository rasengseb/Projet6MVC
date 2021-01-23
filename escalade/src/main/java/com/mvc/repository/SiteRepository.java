package com.mvc.repository;


import com.mvc.entity.Site;
import com.mvc.entity.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional(propagation = Propagation.MANDATORY)
public interface SiteRepository extends JpaRepository<Site, Integer> {

    List<Site> getAllByUtilisateur(Utilisateur utilisateur);

    List<Site> getAllByNomOrNbSecteurOrAdresse_CodePostalOrderByNom(String nom, int nbSecteur, int codePostal);
}
