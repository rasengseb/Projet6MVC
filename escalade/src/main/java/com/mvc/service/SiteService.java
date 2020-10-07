package com.mvc.service;

import com.mvc.entity.Site;
import com.mvc.exception.RessourceNotFoundException;

import java.util.List;

public interface SiteService {

    void saveSite(Site site);

    List getAllSite();

    Site getSite(int id) throws RessourceNotFoundException;

}
