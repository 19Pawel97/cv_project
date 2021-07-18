package com.example.contoller;

import com.example.model.About;
import com.example.model.Message;
import com.example.repository.AboutRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class AboutController {

    private final AboutRepository aboutRepository;

    public AboutController(AboutRepository aboutRepository) {
        this.aboutRepository = aboutRepository;
    }

    @GetMapping("/about")
    public String getAbout(Model model) {
        List<About> list = aboutRepository.findAll();
        model.addAttribute("about", list);
        return "about/about";
    }

    @RequestMapping(value = "/about_edit", method = RequestMethod.POST)
    public RedirectView addMessage(@ModelAttribute About about) {
        aboutRepository.save(about);
        return new RedirectView("/home");
    }





}
