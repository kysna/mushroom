package cz.fi.muni.pa165.dao;

import cz.fi.muni.pa165.entity.Forest;
import cz.fi.muni.pa165.entity.Hunter;
import cz.fi.muni.pa165.entity.Mushroom;
import cz.fi.muni.pa165.entity.Visit;
import cz.fi.muni.pa165.utils.DateIntervalUtils;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Date;
import java.util.List;

/**
 * Created by Jiří Šácha 409861 on 10/23/16.
 */
@Repository
public class VisitDaoImpl implements VisitDao {

    @PersistenceContext
    private EntityManager em;

    /**
     * Find Visit entity by id.
     *
     * @param id identifier of Visit class
     * @return Visit with given id, otherwise null
     */
    @Override
    public Visit findById(Long id) {

        return em.find(Visit.class, id);
    }

    /**
     * Create new Visit entity.
     *
     * @param visit the visit to be put into DB
     */
    @Override
    public void create(Visit visit) {
        em.persist(visit);
    }

    /**
     * Update Visit entity.
     *
     * @param visit Visit in Dadatabase, which will be updated
     */
    @Override
    public Visit update(Visit visit) {
        return em.merge(visit);
    }

    /**
     * Delete visit from Database.
     *
     * @param visit the visit to be deleted from DB
     */
    @Override
    public void delete(Visit visit) {
        em.remove(visit);
    }

    /**
     * Find all visits in Database and return them as List
     *
     * @return the list of all visits in DB
     */
    @Override
    public List<Visit> findAll() {
        return em.createQuery("select v from Visit v",
                Visit.class).getResultList();
    }

    /**
     * Find all visits for given forest.
     *
     * @param forest Forest entity
     * @return list of all visits for given forest
     */
    public List<Visit> findByForest(Forest forest) {
        return em.createQuery("select v from Visit v where forest = :forest",
                Visit.class).setParameter("forest", forest).getResultList();
    }

    /**
     * Find all visits for given hunter.
     *
     * @param hunter Hunter entity
     * @return list of all visits for given hunter
     */
    public List<Visit> findByHunter(Hunter hunter) {
        return em.createQuery("select v from Visit v where hunter = :hunter",
                Visit.class).setParameter("hunter", hunter).getResultList();
    }

    /**
     * Find all visits for given mushroom.
     *
     * @param mushroom Mushroom entity
     * @return list of all visits for given mushroom
     */
    public List<Visit> findByMushroom(Mushroom mushroom) {
        return em.createQuery("select v from Visit as v inner join v.mushroomsCount as c inner join c.mushroom as m " +
                        "where m = :mushroom",
                Visit.class).setParameter("mushroom", mushroom).getResultList();
    }

    @Override
    public List<Visit> findByDate(Date date) {
        return findByDate(date, date);
    }

    @Override
    public List<Visit> findByDate(Date from, Date to) {
        Assert.notNull(from, "from date can't be null");
        Assert.notNull(to, "to date can't be null");

        return em.createQuery("select m from Visit m where (fromDate <= :searchFrom and toDate >= :searchTo) ",
                Visit.class)
                .setParameter("searchFrom", from)
                .setParameter("searchTo", to)
                .getResultList();
    }
}
