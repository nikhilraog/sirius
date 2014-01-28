package org.shaon.utd.sirius.controller.instructor;

import org.shaon.utd.sirius.domain.AuthenticatedUser;
import org.shaon.utd.sirius.domain.Instructor;
import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.service.InstructorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * @author Fahad Shaon
 */
@Controller
@RequestMapping("/instructor")
public class InstructorCourseController {

    private static final Logger log = LoggerFactory.getLogger(InstructorCourseController.class);

    @Autowired
    private InstructorService instructorService;

    @RequestMapping(value = "/course", method = RequestMethod.GET)
    public String index(ModelMap model) {

        log.info("/instructor/course");

        AuthenticatedUser user = (AuthenticatedUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        log.info("Username {}", user.getUsername());

        Instructor instructor = instructorService.findByUserId(user.getUserId());

        model.put("instructor", instructor);

        List<Section> sectionList = instructorService.fetchSections(instructor);
        log.info("Section List size {}", sectionList.size());
        model.put("sectionList", sectionList);

        return "instructor/course";
    }
}
