package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.Course;
import org.shaon.utd.sirius.domain.Registered;
import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.domain.Student;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Fahad Shaon
 */
@Service(value = "registeredService")
public class RegisteredServiceBean implements RegisteredService {

    private static final Logger log = LoggerFactory.getLogger(RegisteredServiceBean.class);

    protected EntityManager entityManager;

    @PersistenceContext
    public void setEntityManager(final EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public static Map<Integer, String> gradeMap = new HashMap<Integer, String>();

    static {
        gradeMap.put(4, "A");
        gradeMap.put(3, "B");
        gradeMap.put(2, "C");
        gradeMap.put(1, "D");
        gradeMap.put(0, "F");
    }

    public String getLetterGrade(Integer numGrade) {
        return gradeMap.get(numGrade);
    }

    @Transactional
    public List<Registered> fetchRegisteredSectionsOfStudent(Student student) {

        return (List<Registered>) entityManager.createQuery("SELECT r " +
                "FROM Registered r " +
                "INNER JOIN r.registeredPK.student s " +
                "WHERE s.id = :studentId")
                .setParameter("studentId", student.getId())
                .getResultList();
    }

    @Transactional
    public List<Registered> fetchRegisteredStudentOfSection(Section section) {

        return (List<Registered>) entityManager.createQuery("SELECT r " +
                "FROM Registered r " +
                "INNER JOIN r.registeredPK.section s " +
                "WHERE s.id = :sectionId")
                .setParameter("sectionId", section.getId())
                .getResultList();
    }

    @Transactional
    public List<Registered> fetchRegistered(Section section, Long studentId, String firstName, String lastName) {

        StringBuilder sql = new StringBuilder()
                .append("SELECT r ")
                .append("FROM Registered r ")
                .append("INNER JOIN r.registeredPK.section se ")
                .append("INNER JOIN r.registeredPK.student st ")
                .append("WHERE se.id = :sectionId ");

        if (studentId != null) {
            sql.append("and st.id = :studentId ");
        }

        if (firstName != null && !firstName.isEmpty()) {
            sql.append("and st.firstName like :firstName ");
        }

        if (lastName != null && !lastName.isEmpty()) {
            sql.append("and st.lastName like :lastName ");
        }

        log.debug("Generated HQL Query: {}", sql.toString());

        Query query = entityManager.createQuery(sql.toString())
                .setParameter("sectionId", section.getId());

        if (studentId != null) {
            query.setParameter("studentId", studentId);
        }

        if (firstName != null && !firstName.isEmpty()) {
            query.setParameter("firstName", "%" + firstName + "%");
        }

        if (lastName != null && !lastName.isEmpty()) {
            query.setParameter("lastName", "%" + lastName + "%");
        }

        return (List<Registered>) query.getResultList();
    }

    public Section findSectionById(Long id) {
        log.debug("registered.findSectionById {}", id);
        return entityManager.find(Section.class, id);
    }

    @Transactional
    public Registered find(Long sectionId, Long studentId) {
        return (Registered) entityManager.createQuery("SELECT r " +
                "FROM Registered r " +
                "INNER JOIN r.registeredPK.section se " +
                "INNER JOIN r.registeredPK.student st " +
                "WHERE se.id = :sectionId " +
                "AND st.id = :studentId")
                .setParameter("sectionId", sectionId)
                .setParameter("studentId", studentId)
                .getSingleResult();
    }

    @Transactional
    public void save(Registered registered) {

        if (registered.getSection().getId() == null) {
            entityManager.persist(registered);
        } else if (!entityManager.contains(registered)) {
            entityManager.merge(registered);
        }
    }

    @Transactional
    public List<Section> fetchSectionList() {
        return (List<Section>) entityManager.createQuery("SELECT s " +
                "FROM Section s " +
                "INNER JOIN s.course " +
                "ORDER BY s.course.courseNumber")
                .getResultList();
    }

    @Transactional
    public Course fetchCourse(String courseNumber) {
        return (Course) entityManager.createQuery("SELECT c " +
                "FROM Course c " +
                "INNER JOIN FETCH c.sectionList se " +
                "WHERE c.courseNumber = :courseNumber ")
                .setParameter("courseNumber", courseNumber)
                .getSingleResult();
    }
}
