package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Course;
import org.shaon.utd.sirius.domain.Registered;
import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.domain.Student;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Fahad Shaon
 */
public interface RegisteredService {
    @PersistenceContext
    void setEntityManager(EntityManager entityManager);

    @Transactional
    List<Registered> fetchRegisteredSectionsOfStudent(Student student);

    @Transactional
    List<Registered> fetchRegisteredStudentOfSection(Section section);

    Section findSectionById(Long id);

    @Transactional
    Registered find(Long sectionId, Long studentId);

    @Transactional
    void save(Registered registered);

    String getLetterGrade(Integer numGrade);

    @Transactional
    List<Registered> fetchRegistered(Section section, Long studentId, String firstName, String lastName);

    @Transactional
    List<Section> fetchSectionList();

    @Transactional
    Course fetchCourse(String courseNumber);
}
