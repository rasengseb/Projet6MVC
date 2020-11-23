package com.mvc.service;

import com.mvc.entity.Commentaire;
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
}
