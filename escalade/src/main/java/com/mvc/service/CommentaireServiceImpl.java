package com.mvc.service;

import com.mvc.entity.Commentaire;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.CommentaireRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.MANDATORY)
public class CommentaireServiceImpl implements CommentaireService{

    @Autowired
    private CommentaireRepository commentaireRepository;

    @Override
    public void saveCommentaire(Commentaire commentaire) {
        commentaireRepository.save(commentaire);
    }

    @Override
    public void deleteCommentaire(int id) throws RessourceNotFoundException {
        Commentaire commentaire = commentaireRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id)
        );
        commentaire.setSite(null);
        commentaireRepository.save(commentaire);
        commentaireRepository.delete(commentaire);
    }

    @Override
    public void update(String commentaire, int id) throws RessourceNotFoundException {
        Commentaire commentaire1 = commentaireRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id)
        );
        commentaire1.setCommentaire(commentaire);
        commentaireRepository.save(commentaire1);
    }
}
