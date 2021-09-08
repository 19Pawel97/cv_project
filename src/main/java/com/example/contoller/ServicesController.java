package com.example.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ServicesController {
    @GetMapping("/services")
    public String getServices() {
        return "services/services_admin";
    }
}
