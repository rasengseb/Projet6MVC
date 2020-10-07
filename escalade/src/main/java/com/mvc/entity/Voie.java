package com.mvc.entity;

import javax.persistence.*;

@Entity
@Table(name = "voie")
public class Voie {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private Integer id;

    @ManyToOne (cascade = CascadeType.ALL)
    @Column(name = "id_secteur")
    private Secteur secteur;

    @Column(name = "nom")
    private String nom;

    @Column(name = "longueur")
    private int longueur;

    @Column(name = "description")
    private String description;

    @Column(name = "cote")
    private String cote;

    public Voie() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Secteur getSecteur() {
        return secteur;
    }

    public void setSecteur(Secteur secteur) {
        this.secteur = secteur;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getLongueur() {
        return longueur;
    }

    public void setLongueur(int longueur) {
        this.longueur = longueur;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCote() {
        return cote;
    }

    public void setCote(String cote) {
        this.cote = cote;
    }

    @Override
    public String toString() {
        return "Voie{" +
                "id=" + id +
                ", secteur=" + secteur +
                ", nom='" + nom + '\'' +
                ", longueur=" + longueur +
                ", description='" + description + '\'' +
                ", cote='" + cote + '\'' +
                '}';
    }
}
