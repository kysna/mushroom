package cz.fi.muni.pa165.service;

import cz.fi.muni.pa165.entity.MushroomCount;

import java.util.List;

/**
 * @author Filip Krepinsky (410022) on 11/23/16
 */
public interface MushroomCountService {

    /**
     * Creates mushroomCount
     *
     * @param mushroomCount mushroom count to be created
     */
    void create(MushroomCount mushroomCount);

    /**
     * Updates mushroomCount
     *
     * @param mushroomCount mushroom count to be created updated
     */
    MushroomCount update(MushroomCount mushroomCount);

    /**
     * Deletes mushroomCount
     *
     * @param mushroomCount mushroom count to be deleted
     */
    void delete(MushroomCount mushroomCount);

    /**
     * Finds mushroomCount by given id
     *
     * @param id id
     */
    MushroomCount findById(Long id);

    /**
     * Finds all entities mushroomCount
     *
     * @return all mushroom count
     */
    List<MushroomCount> findAll();

    /**
     * Finds all mushrooms and their respective count found by all visitors last week
     *
     * @return mushroom count
     */
    List<MushroomCount> findRecentlyFoundPickableMushrooms();
}
