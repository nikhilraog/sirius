package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Instructor;
import org.shaon.utd.sirius.domain.Section;
import org.testng.Assert;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.unitils.UnitilsTestNG;
import org.unitils.dbunit.annotation.DataSet;
import org.unitils.orm.jpa.JpaUnitils;
import org.unitils.orm.jpa.annotation.JpaEntityManagerFactory;

import java.util.List;

/**
 * @author Fahad Shaon
 */
@DataSet
@JpaEntityManagerFactory(persistenceUnit = "TestPersistenceUnit", configFile = "META-INF/persistence-test.xml")
public class InstructorServiceBeanTest extends UnitilsTestNG {


    private InstructorService instructorService;

    @BeforeMethod
    public void setUp() {
        instructorService = new InstructorServiceBean();
        JpaUnitils.injectEntityManagerInto(instructorService);
    }

    @Test
    public void testFindByUserId() {
        Instructor instructor = instructorService.findByUserId(2L);
        Assert.assertEquals(instructor.getId(), new Long(1));
        Assert.assertEquals(instructor.getFullName(), "Balaji Raghavachari");
    }

    @Test
    public void testFetchSections() {
        Instructor instructor = instructorService.findByUserId(2L);

        List<Section> sectionList = instructorService.fetchSections(instructor);
        Assert.assertEquals(sectionList.size(), 2);

        Section section;
        section = sectionList.get(0);
        Assert.assertEquals(section.getSemester(), "Fall");
        Assert.assertEquals(section.getYear(), new Integer(2012));
        Assert.assertEquals(section.getSectionNumber(), new Integer(1));

        section = sectionList.get(1);
        Assert.assertEquals(section.getSemester(), "Fall");
        Assert.assertEquals(section.getYear(), new Integer(2012));
        Assert.assertEquals(section.getSectionNumber(), new Integer(2));
    }

    @Test
    public void testFetchSectionsWithUserId() {

        List<Section> sectionList = instructorService.fetchSectionsWithUserId(2L);
        Assert.assertEquals(sectionList.size(), 2);

        Section section;
        section = sectionList.get(0);
        Assert.assertEquals(section.getSemester(), "Fall");
        Assert.assertEquals(section.getYear(), new Integer(2012));
        Assert.assertEquals(section.getSectionNumber(), new Integer(1));

        section = sectionList.get(1);
        Assert.assertEquals(section.getSemester(), "Fall");
        Assert.assertEquals(section.getYear(), new Integer(2012));
        Assert.assertEquals(section.getSectionNumber(), new Integer(2));
    }
}
