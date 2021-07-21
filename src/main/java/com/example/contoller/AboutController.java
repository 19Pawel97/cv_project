package com.example.contoller;

import com.example.model.About;
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

    @GetMapping("/about_admin")
    public String getAboutAdmin(Model model) {
        List<About> list = aboutRepository.findAll();
        if (list.size() > 0) {
            List<About> last_list = list.subList(list.size() - 1, list.size());
            model.addAttribute("about", last_list);
        } else {
            model.addAttribute("about", list);
        }
        return "about/about_admin";
    }

    @GetMapping("/about_user")
    public String getAboutUser(Model model) {
        List<About> list = aboutRepository.findAll();
        if (list.size() > 0) {
            List<About> last_list = list.subList(list.size() - 1, list.size());
            model.addAttribute("about", last_list);
        } else {
            model.addAttribute("about", list);
        }
        return "about/about_user";
    }

    @RequestMapping(value = "/about_edit", method = RequestMethod.GET)
    public String editAbout() {
        return "about/about_edit";
    }

    @RequestMapping(value = "/about_edit", method = RequestMethod.POST)
    public RedirectView addAbout(@ModelAttribute About about) {
        aboutRepository.save(about);
        return new RedirectView("/home");
    }


}
