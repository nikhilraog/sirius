package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Student;
import org.testng.Assert;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.unitils.UnitilsTestNG;
import org.unitils.dbunit.annotation.DataSet;
import org.unitils.orm.jpa.JpaUnitils;
import org.unitils.orm.jpa.annotation.JpaEntityManagerFactory;

/**
 * @author Fahad Shaon
 */
@DataSet
@JpaEntityManagerFactory(persistenceUnit = "TestPersistenceUnit", configFile = "META-INF/persistence-test.xml")
public class StudentServiceBeanTest extends UnitilsTestNG {

    private StudentService studentServiceBean;

    @BeforeMethod
    public void setUp() {
        studentServiceBean = new StudentServiceBean();
        JpaUnitils.injectEntityManagerInto(studentServiceBean);
    }

    @Test
    public void testFindByUserId() {
        Student student = studentServiceBean.findByUserId(1L);
        Assert.assertEquals(student.getId(), new Long(1));
        Assert.assertEquals(student.getFirstName(), "First");
        Assert.assertEquals(student.getLastName(), "User");
    }
}
