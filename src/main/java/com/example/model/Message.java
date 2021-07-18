package com.example.model;

import javax.persistence.*;

@Entity
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String yourName;
    private String yourEmail;
    private String subject;
    @Column(length = 3000)
    private String theMessage;

    public Message() {
    }

    public Message(Long id, String yourName, String yourEmail, String subject, String theMessage) {
        this.id = id;
        this.yourName = yourName;
        this.yourEmail = yourEmail;
        this.subject = subject;
        this.theMessage = theMessage;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getYourName() {
        return yourName;
    }

    public void setYourName(String yourName) {
        this.yourName = yourName;
    }

    public String getYourEmail() {
        return yourEmail;
    }

    public void setYourEmail(String yourEmail) {
        this.yourEmail = yourEmail;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTheMessage() {
        return theMessage;
    }

    public void setTheMessage(String theMessage) {
        this.theMessage = theMessage;
    }
}
