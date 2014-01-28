package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Course;
import org.shaon.utd.sirius.domain.Registered;
import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.domain.Student;
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
@DataSet("InstructorServiceBeanTest.xml")
@JpaEntityManagerFactory(persistenceUnit = "TestPersistenceUnit", configFile = "META-INF/persistence-test.xml")
public class RegisteredServiceBeanTest extends UnitilsTestNG {

    private RegisteredService registeredService;

    @BeforeMethod
    public void setUp() {
        registeredService = new RegisteredServiceBean();
        JpaUnitils.injectEntityManagerInto(registeredService);
    }

    @Test
    public void testFindByUserId() {

        Student student = new Student();
        student.setId(1L);

        List<Registered> registeredList = registeredService.fetchRegisteredSectionsOfStudent(student);
        Assert.assertEquals(registeredList.size(), 3);
        Registered registered = registeredList.get(0);

        Assert.assertEquals(registered.getSection().getId(), new Long(1));

        registered = registeredList.get(1);
        Assert.assertEquals(registered.getSection().getId(), new Long(3));

        registered = registeredList.get(2);
        Assert.assertEquals(registered.getSection().getId(), new Long(4));
    }

    @Test
    public void testFetchRegisteredStudentOfSection() {

        Section section = new Section();
        section.setId(1L);

        List<Registered> registeredList = registeredService.fetchRegisteredStudentOfSection(section);
        Assert.assertEquals(registeredList.size(), 5);
        Registered registered = registeredList.get(0);

        Assert.assertEquals(registered.getStudent().getFirstName(), "Mariam");

        registered = registeredList.get(1);
        Assert.assertEquals(registered.getStudent().getFirstName(), "Sean");

        registered = registeredList.get(2);
        Assert.assertEquals(registered.getStudent().getFirstName(), "Camilla");

        registered = registeredList.get(3);
        Assert.assertEquals(registered.getStudent().getFirstName(), "Mariko");

        registered = registeredList.get(4);
        Assert.assertEquals(registered.getStudent().getFirstName(), "Cora");
    }

    @Test
    public void testFind() {
        Registered registered = registeredService.find(1L, 1L);
        Assert.assertEquals(registered.getSection().getId(), new Long(1));
        Assert.assertEquals(registered.getStudent().getId(), new Long(1));
    }

    @Test
    public void testFetchRegistered() throws Exception {
        Section section = new Section();
        section.setId(1L);
        List<Registered> registeredList = registeredService.fetchRegistered(section, 1L, "", "");
        Assert.assertEquals(registeredList.size(), 1);

        registeredList = registeredService.fetchRegistered(section, null, "a", "");
        Assert.assertEquals(registeredList.size(), 5);

        registeredList = registeredService.fetchRegistered(section, null, "", "a");
        Assert.assertEquals(registeredList.size(), 1);
    }

    @Test
    public void testFetchSectionList() throws Exception {
        List<Section> sectionList = registeredService.fetchSectionList();
        Assert.assertEquals(sectionList.size(), 4);
    }

    @Test
    public void testFetchCourse() throws Exception {
        String courseNumber = "CS 6360";
        Course course = registeredService.fetchCourse(courseNumber);
        Assert.assertEquals(course.getCourseNumber(), courseNumber);
        Assert.assertEquals(course.getSectionList().size(), 2);
    }
}
