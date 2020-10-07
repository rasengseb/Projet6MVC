package com.mvc.service;

import com.mvc.repository.SecteurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SecteurServiceImpl implements SecteurService{

    @Autowired
    private SecteurRepository secteurRepository;


}
