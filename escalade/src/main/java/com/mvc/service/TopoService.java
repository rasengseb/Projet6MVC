package com.mvc.service;

import com.mvc.entity.Topo;
import com.mvc.exception.RessourceNotFoundException;

public interface TopoService {

    void saveTopo(Topo topo);

    Topo getTopo(int id) throws RessourceNotFoundException;
}
