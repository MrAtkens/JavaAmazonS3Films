package com.book.find.controllers;

import com.book.find.models.Auth.User;
import com.book.find.repos.UserRepo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
public class MainController {

    public MainController() {
    }
    @GetMapping("/admin")
    public String index(Model model) {

        return "index";
    }


}