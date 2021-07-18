package com.example.contoller;

import com.example.model.Message;
import com.example.repository.MessageRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class ContactController {

    private final MessageRepository messageRepository;

    public ContactController(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    @GetMapping("/contact")
    public String getContact() {
        return "contact/contact";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.POST)
    public RedirectView addMessage(@ModelAttribute Message message) {
        messageRepository.save(message);
        return new RedirectView("/home");
    }
}
