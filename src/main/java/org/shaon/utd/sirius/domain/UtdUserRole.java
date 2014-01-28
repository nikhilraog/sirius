package org.shaon.utd.sirius.domain;

import javax.persistence.*;

/**
 * @author Fahad Shaon
 */
@Entity
@Table(name = "utd_user_role")
public class UtdUserRole {

    private Long id;
    private UtdUser utdUser;
    public String roleName;

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "utd_user", nullable = false)
    public UtdUser getUtdUser() {
        return utdUser;
    }

    public void setUtdUser(UtdUser utdUser) {
        this.utdUser = utdUser;
    }

    @Column(name = "role_name")
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "UtdUserRole{" +
                "id=" + id +
                ", roleName='" + roleName + '\'' +
                '}';
    }
}
