package cz.fi.muni.pa165.service.facade;

import cz.fi.muni.pa165.dto.*;
import cz.fi.muni.pa165.entity.Visit;
import cz.fi.muni.pa165.facade.VisitFacade;
import cz.fi.muni.pa165.service.VisitService;
import cz.fi.muni.pa165.service.mappers.ForestMapperService;
import cz.fi.muni.pa165.service.mappers.HunterMapperService;
import cz.fi.muni.pa165.service.mappers.MushroomMapperService;
import cz.fi.muni.pa165.service.mappers.VisitMapperService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

/**
 * @author Filip Krepinsky (410022) on 11/23/16
 */
@Service
@Transactional
public class VisitFaceadeImpl implements VisitFacade {

    @Inject
    VisitService visitService;

    @Inject
    VisitMapperService mapperService;

    @Inject
    HunterMapperService hunterMapperService;

    @Inject
    ForestMapperService forestMapperService;

    @Inject
    private MushroomMapperService mushroomMapperService;

    @Override
    public void create(VisitDTO visit) {
        visitService.create(mapperService.asEntity(visit));
    }

    @Override
    public VisitDTO update(VisitDTO visit) {
        Visit updated = visitService.update(mapperService.asEntity(visit));
        return mapperService.asDto(updated);
    }

    @Override
    public void delete(Long id) {
        visitService.delete(visitService.findById(id));
    }

    @Override
    public VisitDTO findById(Long id) {
        return mapperService.asDto(visitService.findById(id));
    }

    @Override
    public List<VisitDTO> findAll() {
        return mapperService.asDtos(visitService.findAll());
    }

    @Override
    public List<VisitDTO> findByForest(ForestDTO forest) {
        List<Visit> found = visitService.findByForest(forestMapperService.asEntity(forest));
        return mapperService.asDtos(found);
    }

    @Override
    public List<VisitDTO> findByHunter(HunterDTO hunter) {
        List<Visit> found = visitService.findByHunter(hunterMapperService.asEntity(hunter));
        return mapperService.asDtos(found);
    }

    @Override
    public List<VisitDTO> findByMushroom(MushroomDTO mushroom) {
        List<Visit> found = visitService.findByMushroom(mushroomMapperService.asEntity(mushroom));
        return mapperService.asDtos(found);
    }

    @Override
    public List<VisitDTO> findByDate(DateDTO date) {
        List<Visit> found = visitService.findByDate(date.getDate());
        return mapperService.asDtos(found);
    }

    @Override
    public List<VisitDTO> findByDate(DateIntervalDTO interval) {
        List<Visit> found = visitService.findByDate(interval.getFrom(), interval.getTo());
        return mapperService.asDtos(found);
    }
}