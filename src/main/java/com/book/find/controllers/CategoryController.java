package com.book.find.controllers;

import com.book.find.models.Category;
import com.book.find.services.CategoryCrudService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;
import java.util.UUID;

@Controller
public class CategoryController {
    private final CategoryCrudService categoryCrudService;

    public CategoryController(CategoryCrudService categoryCrudService) {
        this.categoryCrudService = categoryCrudService;
    }

    @GetMapping("/category-list")
    public String home(Map<String, Object> model) {
        Iterable<Category> categories = categoryCrudService.getCategories();
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
    public ModelAndView add(@RequestParam String name, @RequestParam String description) {
        categoryCrudService.addCategory(new Category(name, description));
        return new ModelAndView("redirect:/category-list");
    }

    @PostMapping("/editCategory/{categoryId}")
    public ModelAndView edit(@PathVariable UUID categoryId, @RequestParam String name, @RequestParam String description) {
        categoryCrudService.editCategory(new Category(name, description), categoryId);
        return new ModelAndView("redirect:/category-list");
    }

    @GetMapping("/deleteCategory/{categoryId}")
    public ModelAndView delete(@PathVariable UUID categoryId) {
        categoryCrudService.deleteCategory(categoryId);
        return new ModelAndView("redirect:/category-list");
    }

}