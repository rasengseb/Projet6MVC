package com.mvc.service;

import com.mvc.entity.Commentaire;
import com.mvc.exception.RessourceNotFoundException;

public interface CommentaireService {

    void saveCommentaire(Commentaire commentaire);

    void deleteCommentaire(int id) throws RessourceNotFoundException;

    void update(String commentaire, int id) throws RessourceNotFoundException;
}
