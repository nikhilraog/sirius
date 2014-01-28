package org.shaon.utd.sirius.controller.guest;

import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.service.RegisteredService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author Fahad Shaon
 */
@Controller
@RequestMapping("/course")
public class CourseController {

    private static final Logger log = LoggerFactory.getLogger(CourseController.class);

    @Autowired
    private RegisteredService registeredService;

    @RequestMapping(method = RequestMethod.GET)
    public String course(ModelMap model) {

        log.debug("/course");

        List<Section> sectionList = registeredService.fetchSectionList();
        log.info("sectionList size {}", sectionList.size());
        model.put("sectionList", sectionList);

        return "guest/course";
    }

    @RequestMapping("/detail")
    public String courseDetail(ModelMap model, @RequestParam(value = "courseNumber") String courseNumber) {

        model.put("course", registeredService.fetchCourse(courseNumber));

        return "guest/courseDetail";
    }
}
