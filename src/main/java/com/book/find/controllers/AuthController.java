package com.book.find.controllers;

import com.book.find.models.Auth.Role;
import com.book.find.models.Auth.User;
import com.book.find.repos.UserRepo;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Collections;
import java.util.Map;


@Controller
public class AuthController {
    private final UserRepo userRepo;

    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    public AuthController(UserRepo userRepo, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepo = userRepo;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    @GetMapping("/login")
    public String login(){
        User findAdmin = userRepo.findByUsername("ZULU");
        if(findAdmin == null) {
            User user = new User();
            user.setUsername("ZULU");
            user.setActive(true);
            user.setRoles(Collections.singleton(Role.ROLE_ADMIN));
            String encodedPassword = bCryptPasswordEncoder.encode("Nuke1042");
            user.setPassword(encodedPassword);
            userRepo.save(user);
        }
        return "login";
    }

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }


    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model){
        User userFromDb = userRepo.findByUsername(user.getUsername());
        if(userFromDb != null){
            if(bCryptPasswordEncoder.matches(user.getPassword(), userFromDb.getPassword())) {
                return "redirect:/";
            }
            model.put("message", "User exist");
            return registration();
        }
        user.setActive(true);
        user.setRoles(Collections.singleton(Role.ROLE_USER));
        String encodedPassword = bCryptPasswordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        userRepo.save(user);

        return "redirect:/login";
    }


    @GetMapping(value="/logout")
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }

}