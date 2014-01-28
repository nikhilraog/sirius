package org.shaon.utd.sirius.domain;

import javax.persistence.*;

/**
 * @author Fahad Shaon
 */
@Entity
@Table(name = "instructor")
public class Instructor {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "full_name")
    private String fullName;

    @OneToOne()
    @JoinColumn(name = "utd_user")
    private UtdUser utdUser;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public UtdUser getUtdUser() {
        return utdUser;
    }

    public void setUtdUser(UtdUser utdUser) {
        this.utdUser = utdUser;
    }
}
