package org.shaon.utd.sirius.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Fahad Shaon
 */
@Entity
@Table(name= "department")
public class Department {

    @Id
    @Column(name = "department_code", length=20)
    private String departmentCode;

    @Column(name = "department_name")
    private String departmentName;

    @Column(name = "collage")
    private String college;

    @Column(name = "office_number")
    private String officeNumber;

    @Column(name = "phone")
    private String phone;

    public String getDepartmentCode() {
        return departmentCode;
    }

    public void setDepartmentCode(String departmentCode) {
        this.departmentCode = departmentCode;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getOfficeNumber() {
        return officeNumber;
    }

    public void setOfficeNumber(String officeNumber) {
        this.officeNumber = officeNumber;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
