package cz.fi.muni.pa165.service;

import cz.fi.muni.pa165.dao.*;
import cz.fi.muni.pa165.entity.*;
import cz.fi.muni.pa165.enums.MushroomType;
import cz.fi.muni.pa165.enums.Rank;
import cz.fi.muni.pa165.enums.Role;
import cz.fi.muni.pa165.service.config.ServiceConfig;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import javax.inject.Inject;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.mockito.Matchers.argThat;
import static org.hamcrest.CoreMatchers.not;
import static org.mockito.Mockito.times;

/**
 * Created by michal on 11/25/16.
 *
 * @author Michal Kysilko 436339
 */

@ContextConfiguration(classes = ServiceConfig.class)
public class MushroomCountServiceTest {

    @Autowired
    @InjectMocks
    private MushroomCountService mushroomCountService = new MushroomCountServiceImpl();

    @Mock
    private MushroomCountDao mushroomCountDao;

    /*
    @Mock
    private VisitDao visitDao;

    @Mock
    private TimeService timeService;
    */
    private Mushroom hrib;
    private Mushroom muchomurka;
    private Visit visit1;
    private Forest forest;
    private Hunter hunter;
    private Date toDate;
    private Date fromDate;
    private MushroomCount mcount;
    private MushroomCount mcount2;

    @BeforeMethod
    public void init() {

        MockitoAnnotations.initMocks(this);

        fromDate = new Date(1479709822000L);
        toDate = new Date(1479731422000L);

        hrib = new Mushroom();
        hrib.setName("Hrib smrkovy");
        hrib.setType(MushroomType.EDIBLE);

        muchomurka = new Mushroom();
        muchomurka.setName("Muchomurka cervena");
        muchomurka.setType(MushroomType.NONEDIBLE);

        forest = new Forest();
        forest.setName("Bukovy les");

        hunter = new Hunter();
        hunter.setFirstName("Jozef");
        hunter.setSurname("Straka");
        hunter.setNick("Straka");
        hunter.setEmail("straka@gmail.com");
        hunter.setPasswordHash("123456");
        hunter.setRank(Rank.GURU);
        hunter.setType(Role.USER);

        visit1 = new Visit();
        visit1.setFromDate(fromDate);
        visit1.setToDate(toDate);
        visit1.setForest(forest);
        visit1.setHunter(hunter);

        mcount = new MushroomCount();
        mcount.setMushroom(hrib);
        mcount.setCount(40);
        mcount.setVisit(visit1);

        mcount2 = new MushroomCount();
        mcount2.setMushroom(muchomurka);
        mcount2.setCount(12);
        mcount2.setVisit(visit1);


        Mockito.when(mushroomCountDao.findById(1L)).thenReturn(mcount);
        Mockito.when(mushroomCountDao.findById(argThat(not(1L)))).thenReturn(null);

        Mockito.when(mushroomCountDao.findAll()).thenReturn(Arrays.asList(mcount,mcount2));

    }


    @Test
    public void findById() {
        MushroomCount mc = mushroomCountService.findById(1L);
        Assert.assertEquals(mc.getMushroom(), mcount.getMushroom());
    }

    @Test
    public void findNonExistingById() {
        MushroomCount mc = mushroomCountService.findById(3L);
        Assert.assertNull(mc);
    }

    @Test
    public void create() {
        MushroomCount mc = new MushroomCount();
        mc.setMushroom(hrib);
        mc.setVisit(visit1);
        mushroomCountService.create(mc);
        Mockito.verify(mushroomCountDao, times(1)).create(mc);
    }

    @Test
    public void update() {
        MushroomCount mc = new MushroomCount();
        mc.setMushroom(hrib);
        mc.setVisit(visit1);
        mushroomCountService.create(mc);
        mc.setCount(12);
        mushroomCountService.update(mc);
        Mockito.verify(mushroomCountDao, times(1)).update(mc);
    }

    @Test
    public void delete() {
        MushroomCount mc = new MushroomCount();
        mc.setMushroom(hrib);
        mc.setVisit(visit1);
        mushroomCountService.create(mc);
        mushroomCountService.delete(mc);
        Mockito.verify(mushroomCountDao, times(1)).delete(mc);
    }

    @Test
    public void findAll() {
        List<MushroomCount> mc = mushroomCountService.findAll();
        Assert.assertNotNull(mc);
        Assert.assertEquals(mc.size(), 2);

    }


}
