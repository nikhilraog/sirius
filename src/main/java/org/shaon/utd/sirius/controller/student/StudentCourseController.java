package org.shaon.utd.sirius.controller.student;

import org.shaon.utd.sirius.domain.AuthenticatedUser;
import org.shaon.utd.sirius.domain.Student;
import org.shaon.utd.sirius.service.RegisteredService;
import org.shaon.utd.sirius.service.StudentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Fahad Shaon
 */
@Controller
@RequestMapping("/student")
public class StudentCourseController {

    private static final Logger log = LoggerFactory.getLogger(StudentCourseController.class);

    @Autowired
    private StudentService studentServiceBean;

    @Autowired
    private RegisteredService registeredService;

    @RequestMapping("/course")
    public String index(ModelMap model) {

        log.info("student/course");

        AuthenticatedUser user = (AuthenticatedUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        log.info("Username {}", user.getUsername());

        Student student = studentServiceBean.findByUserId(user.getUserId());

        model.put("user", user);
        model.put("student", student);
        model.put("registered", registeredService.fetchRegisteredSectionsOfStudent(student));

        return "student/course";
    }
}
