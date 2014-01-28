package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Instructor;
import org.shaon.utd.sirius.domain.Section;
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
@Service(value = "instructorService")
public class InstructorServiceBean implements InstructorService {

    private static final Logger log = LoggerFactory.getLogger(InstructorServiceBean.class);

    protected EntityManager entityManager;

    @PersistenceContext
    public void setEntityManager(final EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Transactional
    public Instructor findByUserId(Long userId) {
        log.debug("instructorBean.findByUserId {}", userId);

        return (Instructor) entityManager.createQuery("SELECT i FROM Instructor i " +
                "inner join i.utdUser u " +
                "Where u.id = :userId")
                .setParameter("userId", userId)
                .getSingleResult();
    }

    @Transactional
    public List<Section> fetchSections(Instructor instructor) {
        log.debug("instructorBean.fetchSections {}", instructor.getFullName());

        return (List<Section>) entityManager.createQuery("SELECT s " +
                "FROM Section s " +
                "INNER JOIN s.instructor i " +
                "WHERE i.id = :instructorId")
                .setParameter("instructorId", instructor.getId())
                .getResultList();
    }

    @Transactional
    public List<Section> fetchSectionsWithUserId(Long userId) {
        log.debug("instructorBean.fetchSectionsWithUserId {}", userId);

        return (List<Section>) entityManager.createQuery("SELECT s " +
                "FROM Section s " +
                "INNER JOIN s.instructor i " +
                "INNER JOIN i.utdUser u " +
                "WHERE u.id = :userId")
                .setParameter("userId", userId)
                .getResultList();
    }
}
