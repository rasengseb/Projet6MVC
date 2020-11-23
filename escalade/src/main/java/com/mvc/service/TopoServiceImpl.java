package com.mvc.service;

import com.mvc.entity.Topo;
import com.mvc.repository.TopoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.MANDATORY)
public class TopoServiceImpl implements TopoService{

    @Autowired
    private TopoRepository topoRepository;

    @Override
    public void saveTopo(Topo topo) {
        topoRepository.save(topo);
    }
}
