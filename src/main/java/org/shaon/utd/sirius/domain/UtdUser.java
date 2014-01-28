package org.shaon.utd.sirius.domain;

import javax.persistence.*;
import java.util.List;

/**
 * @author Fahad Shaon
 */
@Entity
@Table(name = "utd_user")
public class UtdUser {

    private Long id;
    private Long version;
    private String fullName;
    private String username;
    private String salt;
    private String password;
    private boolean active;
    private List<UtdUserRole> userRoleList;

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Version
    @Column(name = "version")
    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }

    @Column(name = "full_name")
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Column(name = "salt")
    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name = "active")
    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "utdUser")
    public List<UtdUserRole> getUserRoleList() {
        return userRoleList;
    }

    public void setUserRoleList(List<UtdUserRole> userRoleList) {
        this.userRoleList = userRoleList;
    }

    @Override
    public String toString() {
        return "UtdUser{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", username='" + username + '\'' +
                ", salt='" + salt + '\'' +
                ", password='" + password + '\'' +
                ", active=" + active +
                '}';
    }
}
