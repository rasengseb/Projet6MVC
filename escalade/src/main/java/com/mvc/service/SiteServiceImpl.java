package com.mvc.service;

import com.mvc.entity.Site;
import com.mvc.exception.RessourceNotFoundException;
import com.mvc.repository.SiteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SiteServiceImpl implements SiteService {

    @Autowired
    private SiteRepository siteRepository;

    @Override
    public void saveSite(Site site){
        siteRepository.save(site);
    }

    @Override
    public List getAllSite() {
        return siteRepository.findAll();
    }

    @Override
    public Site getSite(int id) throws RessourceNotFoundException{
        return siteRepository.findById(id).orElseThrow(
                () -> new RessourceNotFoundException(id));
    }
}
