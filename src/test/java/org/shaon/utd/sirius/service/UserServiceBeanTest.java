package org.shaon.utd.sirius.service;

import org.testng.Assert;
import org.shaon.utd.sirius.domain.UtdUser;
import org.shaon.utd.sirius.domain.UtdUserRole;
import org.shaon.utd.sirius.service.UserServiceBean;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.unitils.UnitilsTestNG;
import org.unitils.dbunit.annotation.DataSet;
import org.unitils.orm.jpa.JpaUnitils;
import org.unitils.orm.jpa.annotation.JpaEntityManagerFactory;
import org.unitils.reflectionassert.ReflectionAssert;

import java.util.Arrays;
import java.util.List;

/**
 * @author Fahad Shaon
 */
@DataSet
@JpaEntityManagerFactory(persistenceUnit = "TestPersistenceUnit", configFile = "META-INF/persistence-test.xml")
public class UserServiceBeanTest extends UnitilsTestNG {

    private UserServiceBean userServiceBean;

    @BeforeMethod
    public void setUp() {
        userServiceBean = new UserServiceBean();
        JpaUnitils.injectEntityManagerInto(userServiceBean);
    }

    @Test
    public void testCount() {
        Assert.assertEquals(userServiceBean.count(), new Long(3));
    }

    @Test
    public void testList() {
        List<UtdUser> utdUserList = userServiceBean.list();
        Assert.assertEquals(utdUserList.size(), 3);
        ReflectionAssert.assertPropertyLenientEquals("username", Arrays.asList("fuser", "suser", "tuser"), utdUserList);
    }

    @Test
    public void testGet() {

        UtdUser utdUser = userServiceBean.get(1L);
        Assert.assertEquals(utdUser.getId(), new Long(1));
        Assert.assertEquals(utdUser.getVersion(), new Long(1));
        Assert.assertEquals(utdUser.getFullName(), "First user");
        Assert.assertEquals(utdUser.getUsername(), "fuser");
        Assert.assertEquals(utdUser.getSalt(), "abcd");
        Assert.assertEquals(utdUser.getPassword(), "i2uouoadf");
        Assert.assertEquals(utdUser.isActive(), true);
    }

    @Test
    public void testFindByUserName() {

        UtdUser utdUser = userServiceBean.findByUsername("fuser");
        Assert.assertEquals(utdUser.getId(), new Long(1));
        Assert.assertEquals(utdUser.getVersion(), new Long(1));
        Assert.assertEquals(utdUser.getFullName(), "First user");
        Assert.assertEquals(utdUser.getUsername(), "fuser");
        Assert.assertEquals(utdUser.getSalt(), "abcd");
        Assert.assertEquals(utdUser.getPassword(), "i2uouoadf");
        Assert.assertEquals(utdUser.isActive(), true);
    }

    @Test
    public void testGetRoleList() throws Exception {

        UtdUser utdUser = userServiceBean.findByUsername("fuser");
        List<UtdUserRole> utdUserRoleList = utdUser.getUserRoleList();
        Assert.assertEquals(utdUserRoleList.size(), 2);

        ReflectionAssert.assertPropertyLenientEquals("roleName", Arrays.asList("ADMIN", "INSTRUCTOR"), utdUserRoleList);

        utdUser = userServiceBean.findByUsername("suser");
        utdUserRoleList = utdUser.getUserRoleList();
        Assert.assertEquals(utdUserRoleList.size(), 1);
        ReflectionAssert.assertPropertyLenientEquals("roleName", Arrays.asList("INSTRUCTOR"), utdUserRoleList);
    }

//    @Test
//    @ExpectedDataSet("UserServiceBeanTest-insert-expected.xml")
//    public void testInsert() {
//
//        Assert.assertEquals(noteServiceBean.count(), new Long(3));
//
//        for (int i = 0; i < 3; i++) {
//            Note noteToBeInserted = new Note();
//
//            noteToBeInserted.setContent("Note to be inserted");
//            noteToBeInserted.setTitle("Note to be inserted");
//
//            noteServiceBean.save(noteToBeInserted);
//        }
//    }
//
//    @Test
//    @ExpectedDataSet("UserServiceBeanTest-update-expected.xml")
//    public void testUpdate() {
//
//        Assert.assertEquals(noteServiceBean.count(), new Long(3));
//
//        Note note = noteServiceBean.get(1);
//        note.setTitle("Note 1: Updated Title");
//
//        note = noteServiceBean.get(2);
//        note.setContent("This is updated second note");
//    }
}
