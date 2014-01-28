package org.shaon.utd.sirius.controller.instructor;

import org.shaon.utd.sirius.domain.AuthenticatedUser;
import org.shaon.utd.sirius.domain.Instructor;
import org.shaon.utd.sirius.domain.Registered;
import org.shaon.utd.sirius.domain.Section;
import org.shaon.utd.sirius.service.InstructorService;
import org.shaon.utd.sirius.service.RegisteredService;
import org.shaon.utd.sirius.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * @author Fahad Shaon
 */
@Controller
@RequestMapping("/instructor")
public class InstructorGradeController {

    private static final Logger log = LoggerFactory.getLogger(InstructorGradeController.class);

    @Autowired
    private InstructorService instructorService;

    @Autowired
    private UserService userService;

    @Autowired
    private RegisteredService registeredService;

    @RequestMapping(value = "/grade", method = RequestMethod.GET)
    public String grade(ModelMap model, @RequestParam(value = "sectionId") Long sectionId,
                        @RequestParam(value = "studentId", required = false) Long studentId,
                        @RequestParam(value = "firstName", required = false) String firstName,
                        @RequestParam(value = "lastName", required = false) String lastName,
                        @ModelAttribute("flashMessage") final String flashMessage) {

        log.info("studentId={}", studentId);
        log.info("firstName={}", firstName);
        log.info("lastName={}", lastName);

        String view = "instructor/grade";

        Section section = registeredService.findSectionById(sectionId);
        if (section == null) {
            model.put("errorMessage", "Section not found");
            return view;
        }
        model.put("section", section);

        AuthenticatedUser user = userService.getCurrentLoggedInUser();
        log.info("Username {}", user.getUsername());

        Instructor instructor = instructorService.findByUserId(user.getUserId());

        if (instructor == null) {

            model.put("errorMessage", "Instructor not found");
            return view;
        }

        model.put("instructor", instructor);

        if (!section.getInstructor().getId().equals(instructor.getId())) {
            model.put("errorMessage", "You don't have sufficient privilege");
        }

        //okay now pull up the student related to this section
        model.put("registeredStudentList", registeredService.fetchRegistered(section, studentId, firstName, lastName));

        return view;
    }

    @RequestMapping(value = "/grade", method = RequestMethod.POST)
    public String grade(ModelMap model, WebRequest request, RedirectAttributes redirectAttributes) {

        int count = 0;

        for (Object k : request.getParameterMap().keySet()) {

            String key = k.toString();
            log.info("Key {}", key);
            String[] parts = key.split("-");

            if (parts.length != 3) {
                continue;
            }

            if (".".equals(request.getParameter(key))) {
                continue;
            }

            Long sectionId = Long.parseLong(parts[1]);
            Long studentId = Long.parseLong(parts[2]);

            Registered registered = registeredService.find(sectionId, studentId);

            int numGrade = Integer.parseInt(request.getParameter(key));

            if (registered.getNumericGrade() == null || registered.getNumericGrade() != numGrade) {
                registered.setNumericGrade(numGrade);
                registered.setLetterGrade(registeredService.getLetterGrade(numGrade));
                registeredService.save(registered);
                count++;
            }
        }

        redirectAttributes.addFlashAttribute("flashMessage", "Grade saved for " + count + " student(s)");

        return "redirect:/s/instructor/grade?sectionId=" + request.getParameter("sectionId");
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(ModelMap model) {

        AuthenticatedUser user = userService.getCurrentLoggedInUser();
        log.info("Username {}", user.getUsername());

        Instructor instructor = instructorService.findByUserId(user.getUserId());

        model.put("instructor", instructor);
        model.put("sectionList", instructorService.fetchSections(instructor));

        return "instructor/search";
    }
}