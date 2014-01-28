package org.shaon.utd.sirius.domain;

import javax.persistence.*;
import java.sql.Date;

/**
 * @author Fahad Shaon
 */
@Entity
@Table(name = "student")
public class Student {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Version
    @Column(name = "version")
    private Long version;

    @OneToOne
    @JoinColumn(name = "utd_user")
    private UtdUser utdUser;

    @Column(name = "ssn")
    private Long ssn;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "middle_name")
    private String middleName;

    @Column(name = "date_of_birth")
    private Date dateOfBirth;

    @Column(name = "sex")
    private String sex;

    @Embedded
    @AttributeOverrides({
            @AttributeOverride(name = "street", column = @Column(name = "current_street")),
            @AttributeOverride(name = "city", column = @Column(name = "current_city")),
            @AttributeOverride(name = "state", column = @Column(name = "current_state")),
            @AttributeOverride(name = "zip", column = @Column(name = "current_zip"))
    })
    private Address currentAddress;

    @Column(name = "current_phone")
    private String currentPhone;

    //@AssociationOverride(name="currency", joinColumns=@JoinColumn(name="availableCredit_currency_id"))
    @Embedded
    @AttributeOverrides({
            @AttributeOverride(name = "street", column = @Column(name = "permanent_street")),
            @AttributeOverride(name = "city", column = @Column(name = "permanent_city")),
            @AttributeOverride(name = "state", column = @Column(name = "permanent_state")),
            @AttributeOverride(name = "zip", column = @Column(name = "permanent_zip"))
    })
    private Address permanentAddress;

    @Column(name = "permanent_phone")
    private String permanentPhone;

    @Column(name = "degree")
    private String degree;

    @Column(name = "student_class")
    private String studentClass;

    @ManyToOne
    @JoinColumn(name = "major_department")
    private Department majorDepartment;

    @ManyToOne
    @JoinColumn(name = "minor_department")
    private Department minorDepartment;

//    @ManyToMany(cascade = {CascadeType.ALL})
//    @JoinTable(name = "registered",
//            joinColumns = {@JoinColumn(name = "student_id")},
//            inverseJoinColumns = {@JoinColumn(name = "section_id")}
//    )
//    private Set<Section> sectionSet;
//
//    public Set<Section> getSectionSet() {
//        return sectionSet;
//    }
//
//    public void setSectionSet(Set<Section> sectionSet) {
//        this.sectionSet = sectionSet;
//    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }

    public UtdUser getUtdUser() {
        return utdUser;
    }

    public void setUtdUser(UtdUser utdUser) {
        this.utdUser = utdUser;
    }

    public Long getSsn() {
        return ssn;
    }

    public void setSsn(Long ssn) {
        this.ssn = ssn;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Address getCurrentAddress() {
        return currentAddress;
    }

    public void setCurrentAddress(Address currentAddress) {
        this.currentAddress = currentAddress;
    }

    public String getCurrentPhone() {
        return currentPhone;
    }

    public void setCurrentPhone(String currentPhone) {
        this.currentPhone = currentPhone;
    }

    public Address getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(Address permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getPermanentPhone() {
        return permanentPhone;
    }

    public void setPermanentPhone(String permanentPhone) {
        this.permanentPhone = permanentPhone;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public Department getMajorDepartment() {
        return majorDepartment;
    }

    public void setMajorDepartment(Department majorDepartment) {
        this.majorDepartment = majorDepartment;
    }

    public Department getMinorDepartment() {
        return minorDepartment;
    }

    public void setMinorDepartment(Department minorDepartment) {
        this.minorDepartment = minorDepartment;
    }
}
