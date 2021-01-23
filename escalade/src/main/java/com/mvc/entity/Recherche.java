package com.mvc.entity;

public class Recherche {

    private String siteNom;

    private int nbSecteur;

    private int codePostal;

    public Recherche() {
    }

    public String getSiteNom() {
        return siteNom;
    }

    public void setSiteNom(String siteNom) {
        this.siteNom = siteNom;
    }

    public int getNbSecteur() {
        return nbSecteur;
    }

    public void setNbSecteur(int nbSecteur) {
        this.nbSecteur = nbSecteur;
    }

    public int getCodePostal() {
        return codePostal;
    }

    public void setCodePostal(int codePostal) {
        this.codePostal = codePostal;
    }
}
