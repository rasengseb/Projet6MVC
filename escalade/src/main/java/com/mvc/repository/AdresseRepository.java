package com.mvc.repository;

import com.mvc.entity.Adresse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("adresseRepository")
public interface AdresseRepository extends JpaRepository<Adresse, Integer> {

}
