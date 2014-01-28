package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Instructor;
import org.shaon.utd.sirius.domain.Section;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Fahad Shaon
 */
public interface InstructorService {
    @PersistenceContext
    void setEntityManager(EntityManager entityManager);

    @Transactional
    Instructor findByUserId(Long userId);

    @Transactional
    List<Section> fetchSections(Instructor instructor);

    @Transactional
    List<Section> fetchSectionsWithUserId(Long userId);
}
