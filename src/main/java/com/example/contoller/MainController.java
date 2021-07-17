package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/home")
    public String getHome() {
        return "home";
    }

    @GetMapping("/about")
    public String getAbout() {
        return "about";
    }

    @GetMapping("/skills")
    public String getSkills() {
        return "skills";
    }

    @GetMapping("/resume")
    public String getResume() {
        return "resume";
    }

    @GetMapping("/portfolio")
    public String getPortfolio() {
        return "portfolio";
    }

    @GetMapping("/services")
    public String getServices() {
        return "services";
    }

    @GetMapping("/contact")
    public String getContact() {
        return "contact";
    }
}
