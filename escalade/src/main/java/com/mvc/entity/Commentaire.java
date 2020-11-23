package com.mvc.entity;

import javax.persistence.*;

@Entity
@Table(name = "commentaire")
public class Commentaire {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_site")
    private Site site;

    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "id_utilisateur")
    private Utilisateur utilisateur;

    @Column(name = "commentaire")
    private String commentaire;

    public Commentaire() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Site getSite() {
        return site;
    }

    public void setSite(Site site) {
        this.site = site;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }


}
