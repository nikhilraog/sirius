package org.shaon.utd.sirius.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Fahad Shaon
 */
@Entity
@Table(name = "registered")
public class Registered {

    @Id
    private RegisteredPK registeredPK = new RegisteredPK();

    //bidirectional association!
    @Column(name = "student_id", nullable = false, updatable = false, insertable = false)
    private Long student;

    @Column(name = "section_id", nullable = false, updatable = false, insertable = false)
    private Long section;
    //...

    @Column(name = "numeric_grade")
    private Integer numericGrade;

    @Column(name = "letter_grade")
    private String letterGrade;

    public Integer getNumericGrade() {
        return numericGrade;
    }

    public void setNumericGrade(Integer numericGrade) {
        this.numericGrade = numericGrade;
    }

    public String getLetterGrade() {
        return letterGrade;
    }

    public void setLetterGrade(String letterGrade) {
        this.letterGrade = letterGrade;
    }

    public Student getStudent() {
        return registeredPK.getStudent();
    }

    public void setStudent(Student student) {
        this.registeredPK.setStudent(student);
    }

    public Section getSection() {
        return registeredPK.getSection();
    }

    public void setSection(Section section) {
        this.registeredPK.setSection(section);
    }
}



