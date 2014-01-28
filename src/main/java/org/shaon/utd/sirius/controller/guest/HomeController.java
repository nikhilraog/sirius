package org.shaon.utd.sirius.controller.guest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author fahad
 */
@Controller
@RequestMapping("/home")
public class HomeController {

    private static final Logger log = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        log.info("home/index");
        return "guest/home";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/login")
    public String login() {
        log.info("home/login");
        return "guest/login";
    }

}
