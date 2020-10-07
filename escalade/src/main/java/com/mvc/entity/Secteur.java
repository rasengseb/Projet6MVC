package com.mvc.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table (name = "secteur")
public class Secteur {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne (cascade = CascadeType.ALL)
    @Column(name = "id_site")
    private Site site;

    @OneToMany
    @Column(name = "id_voie")
    private List<Voie> voies;

    public Secteur() {

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

    public List<Voie> getVoies() {
        return voies;
    }

    public void setVoies(List<Voie> voies) {
        this.voies = voies;
    }

    @Override
    public String toString() {
        return "Secteur{" +
                "id=" + id +
                ", site=" + site +
                ", voies=" + voies +
                '}';
    }
}
