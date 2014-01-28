package org.shaon.utd.sirius.controller.student;

import org.shaon.utd.sirius.domain.AuthenticatedUser;
import org.shaon.utd.sirius.service.StudentService;
import org.shaon.utd.sirius.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Fahad Shaon
 */
@Controller
@RequestMapping("/student")
public class StudentProfileController {

    private static final Logger log = LoggerFactory.getLogger(StudentProfileController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private StudentService studentServiceBean;

    @RequestMapping("/profile")
    public String index(ModelMap model) {

        log.debug("/student/profile");

        AuthenticatedUser user = userService.getCurrentLoggedInUser();
        log.debug("Username {}", user.getUsername());

        model.put("user", user);
        model.put("student", studentServiceBean.findByUserId(user.getUserId()));
        return "student/profile";
    }
}
