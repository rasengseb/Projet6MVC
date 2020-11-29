package com.mvc.entity;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;

import java.io.Serializable;


@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Session implements Serializable {

    private Utilisateur utilisateur;

    private boolean isConnect;


    public Session(Utilisateur utilisateur, boolean isConnect) {
        this.utilisateur = utilisateur;
        this.isConnect = isConnect;
    }

    public Session() {
        this.isConnect=false;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    public boolean isConnect() {
        return isConnect;
    }

    public void setConnect(boolean connect) {
        isConnect = connect;
    }
}
