package com.book.find.controllers;

import com.book.find.dto.FilmDto;
import com.book.find.models.Auth.User;
import com.book.find.models.Category;
import com.book.find.repos.UserRepo;
import com.book.find.services.CategoryCrudService;
import com.book.find.services.MovieCrudService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.security.Principal;
import java.sql.Date;
import java.util.Map;
import java.util.UUID;

@Controller
public class MovieController {
    private final CategoryCrudService categoryCrudService;
    private final MovieCrudService movieCrudService;
    private final UserRepo userRepo;


    public MovieController(CategoryCrudService categoryCrudService, MovieCrudService movieCrudService, UserRepo userRepo) {
        this.categoryCrudService = categoryCrudService;
        this.movieCrudService = movieCrudService;
        this.userRepo = userRepo;
    }

    @GetMapping("/movie-list")
    public String main(Map<String, Object> model) {
        model.put("films", movieCrudService.getFilms());
        return "movie-list";
    }

    @GetMapping("/movie-details/{id}")
    public String film(@PathVariable UUID id, Map<String, Object> model, Principal principal) {
        model.put("film", movieCrudService.getFilmById(id));
        model.put("username", principal.getName());
        return "movie-details";
    }

    @GetMapping("/add-movie")
    public String addMovie(Map<String, Object> model) {
        model.put("categories", categoryCrudService.getCategories());
        return "add-movie";
    }

    @GetMapping("/edit-movie/{id}")
    public String editMovieGet(@PathVariable UUID id, Map<String, Object> model){
        Iterable<Category> categories = categoryCrudService.getCategories();
        model.put("film", movieCrudService.getFilmById(id));
        model.put("categories", categories);
        return "edit-movie";
    }

    @PostMapping("/addMovie")
    public ModelAndView add(@RequestParam String name, @RequestParam String description, @RequestParam String director, @RequestParam String scenarist,
                      @RequestParam String producer, @RequestParam String country, @RequestParam String category, @RequestParam Double rating,
                      @RequestParam Date premiere, @RequestParam Integer boxOfficeInDollar, @RequestParam Integer age, @RequestParam MultipartFile image,
                      @RequestParam MultipartFile film, Principal principal) throws IOException {
        Category findCategory = categoryCrudService.getCategoryByName(category);
        FilmDto filmDto = new FilmDto(name,description,director, scenarist, producer, country, rating, premiere, boxOfficeInDollar, age, image, film);
        User user = userRepo.findByUsername(principal.getName());
        movieCrudService.addFilm(filmDto, findCategory, user);
        return new ModelAndView("redirect:/movie-list");
    }

    @PostMapping("/editMovie/{movieId}")
    public ModelAndView editMovie(@RequestParam String name, @RequestParam String description, @RequestParam String director, @RequestParam String scenarist,
                            @RequestParam String producer, @RequestParam String country, @RequestParam String category, @RequestParam Double rating,
                            @RequestParam Date premiere, @RequestParam Integer boxOfficeInDollar, @RequestParam Integer age, @RequestParam MultipartFile image,
                            @RequestParam MultipartFile film, @PathVariable UUID movieId, Principal principal) throws IOException {
        Category findCategory = categoryCrudService.getCategoryByName(category);
        FilmDto filmDto = new FilmDto(name,description,director, scenarist, producer,
                country, rating, premiere, boxOfficeInDollar, age, image, film);
        User user = userRepo.findByUsername(principal.getName());
        movieCrudService.editFilm(filmDto, findCategory, movieId, user);
        return new ModelAndView("redirect:/movie-list");
    }

    @GetMapping("/deleteMovie/{id}")
    public ModelAndView delete(@PathVariable UUID id) throws IOException {
        movieCrudService.deleteFilm(id);
        return new ModelAndView("redirect:/movie-list");
    }
}