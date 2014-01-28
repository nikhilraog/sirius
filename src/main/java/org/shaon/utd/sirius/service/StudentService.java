package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.domain.Student;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Fahad Shaon
 */
public interface StudentService {
    @PersistenceContext
    void setEntityManager(EntityManager entityManager);

    Student get(long id);

    @Transactional
    Student findByUserId(Long userId);

    @Transactional
    List<Section> findSection();

    @Transactional
    List<Student> findStudents();
}
