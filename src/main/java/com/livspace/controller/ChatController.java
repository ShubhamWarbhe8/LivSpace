package com.livspace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {

    @GetMapping("/chatbot")
    public String loadChatPage() {
        return "chatbot"; // maps to /WEB-INF/views/chatbot.jsp
    }
}

