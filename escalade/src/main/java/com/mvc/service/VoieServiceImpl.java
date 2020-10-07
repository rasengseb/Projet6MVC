package com.mvc.service;

import com.mvc.repository.VoieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoieServiceImpl implements VoieService{

    @Autowired
    private VoieRepository voieRepository;
}
