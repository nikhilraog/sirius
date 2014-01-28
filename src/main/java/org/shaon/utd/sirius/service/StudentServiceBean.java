package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.domain.Student;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Fahad Shaon
 */
@Service(value = "studentService")
public class StudentServiceBean implements StudentService {

    private static final Logger log = LoggerFactory.getLogger(StudentServiceBean.class);

    protected EntityManager entityManager;

    @PersistenceContext
    public void setEntityManager(final EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public Student get(long id) {
        log.debug("get {}", id);
        return entityManager.find(Student.class, id);
    }

    @Transactional
    public Student findByUserId(Long userId) {
        log.debug("findByUserId {}", userId);

        return (Student) entityManager.createQuery("SELECT s FROM Student s " +
                "inner join s.utdUser u " +
                "Where u.id = :userId")
                .setParameter("userId", userId)
                .getSingleResult();
    }

    @Transactional
    @Deprecated
    public List<Section> findSection() {
        log.debug("findSections");

        return (List<Section>) entityManager.createQuery("SELECT s From Section s " +
                "Where s.id = :sectionId")
                .setParameter("sectionId", new Long(1))
                .getResultList();
    }

    @Transactional
    @Deprecated
    public List<Student> findStudents() {
        log.debug("findStudents");

        return (List<Student>) entityManager.createQuery("SELECT s From Student s " +
                "Where s.id <= :sectionId")
                .setParameter("sectionId", new Long(10))
                .getResultList();
    }


//    @Transactional
//    public Student findByUserIdWithSection(Long userId) {
//        log.debug("findByUserId {}", userId);
//
//        return (Student) entityManager.createQuery("SELECT s FROM Student s " +
//                "inner join s.utdUser u " +
//                "Where u.id = :userId")
//                .setParameter("userId", userId)
//                .getSingleResult();
//    }
}
