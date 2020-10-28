package com.mvc.entity;

import javax.persistence.*;

@Entity
@Table(name = "utilisateur")
public class Connexion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "pseudo")
    private String cpseudo;

    @Column(name = "mdp")
    private String cmdp;

    public Connexion() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCpseudo() {
        return cpseudo;
    }

    public void setCpseudo(String pseudo) {
        this.cpseudo = pseudo;
    }

    public String getCmdp() {
        return cmdp;
    }

    public void setCmdp(String mdp) {
        this.cmdp = mdp;
    }

}
