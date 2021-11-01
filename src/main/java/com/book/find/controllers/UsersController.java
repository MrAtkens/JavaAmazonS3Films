package com.book.find.controllers;

import com.book.find.dto.SuperAdminDTO;
import com.book.find.models.Auth.User;
import com.book.find.repos.UserRepo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.Map;
import java.util.UUID;


@Controller
public class UsersController {
    private final UserRepo userRepo;

    public UsersController(UserRepo userRepo){
        this.userRepo = userRepo;
    }

    @GetMapping("/users")
    public String main(Map<String, Object> model) {
        model.put("categories", userRepo.findAll());
        return "users";
    }

    @GetMapping("/deleteUser/{id}")
    public ModelAndView delete(@PathVariable UUID id) throws IOException {
        User user = userRepo.findById(id);
        if(user.getUsername().equals(SuperAdminDTO.username))
            return new ModelAndView("redirect:/users");
        userRepo.delete(user);
        return new ModelAndView("redirect:/users");
    }

}
