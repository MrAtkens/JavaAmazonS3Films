package com.book.find.controllers;

import com.book.find.models.Film;
import com.book.find.services.CategoryCrudService;
import com.book.find.services.MovieCrudService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Map;

@Controller
public class FrontController {
    private final CategoryCrudService categoryCrudService;
    private final MovieCrudService movieCrudService;
    public FrontController(CategoryCrudService categoryCrudService, MovieCrudService movieCrudService) {
        this.categoryCrudService = categoryCrudService;
        this.movieCrudService = movieCrudService;
    }


    @GetMapping("/")
    public String main(Map<String, Object> model, Principal principal) {
        ArrayList<Film> filmsBuffer = new ArrayList<Film>();
        int count = 0;
        for(Film film : movieCrudService.getFilms()){
            if(count == 3)
                break;
            filmsBuffer.add(film);
            count++;
        }
        model.put("slideFilms", filmsBuffer);
        model.put("categories", categoryCrudService.getCategories());
        model.put("films", movieCrudService.getFilms());
        model.put("username", principal.getName());
        return "front";
    }

}