package org.shaon.utd.sirius.domain;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;
import java.io.Serializable;

/**
 * @author Fahad Shaon
 */
@Embeddable
public class RegisteredPK implements Serializable {

    @ManyToOne
    private Student student;

    @ManyToOne
    private Section section;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }
}
