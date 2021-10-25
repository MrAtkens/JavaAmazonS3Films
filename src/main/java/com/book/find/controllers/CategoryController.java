package com.book.find.controllers;

import com.book.find.models.Auth.User;
import com.book.find.models.Category;
import com.book.find.repos.UserRepo;
import com.book.find.services.CategoryCrudService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.Map;
import java.util.UUID;

@Controller
public class CategoryController {
    private final UserRepo userRepo;
    private final CategoryCrudService categoryCrudService;

    public CategoryController(UserRepo userRepo, CategoryCrudService categoryCrudService) {
        this.userRepo = userRepo;
        this.categoryCrudService = categoryCrudService;
    }

    @GetMapping("/category-list")
    public String home(Map<String, Object> model, Principal principal) {
        User user = userRepo.findByUsername(principal.getName());
        Iterable<Category> categories = categoryCrudService.getCategoriesByUser(user);
        model.put("categories", categories);
        return "category-list";
    }

    @GetMapping("/edit-category/{categoryId}")
    public String editCategory(@PathVariable UUID categoryId, Map<String, Object> model){
        Category category = categoryCrudService.getCategoryById(categoryId);
        model.put("category", category);
        return "edit-category";
    }

    @GetMapping("/add-category")
    public String addCategory() {
        return "add-category";
    }

    @PostMapping("/addCategory")
    public ModelAndView add(@RequestParam String name, @RequestParam String description, Principal principal) {
        User user = userRepo.findByUsername(principal.getName());
        categoryCrudService.addCategory(new Category(name, description, user));
        return new ModelAndView("redirect:/category-list");
    }

    @PostMapping("/editCategory/{categoryId}")
    public ModelAndView edit(@PathVariable UUID categoryId, @RequestParam String name, @RequestParam String description) {
        categoryCrudService.editCategory(name, description, categoryId);
        return new ModelAndView("redirect:/category-list");
    }

    @GetMapping("/deleteCategory/{categoryId}")
    public ModelAndView delete(@PathVariable UUID categoryId) {
        categoryCrudService.deleteCategory(categoryId);
        return new ModelAndView("redirect:/category-list");
    }

}