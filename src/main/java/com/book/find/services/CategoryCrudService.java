package com.book.find.services;

import com.book.find.models.Auth.User;
import com.book.find.models.Category;
import com.book.find.repos.CategoryRepo;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class CategoryCrudService {
    private final CategoryRepo categoryRepo;

    public CategoryCrudService(CategoryRepo categoryRepo) {
        this.categoryRepo = categoryRepo;
    }

    public Iterable<Category> getCategories(){
        return categoryRepo.findAll();
    }

    public Iterable<Category> getCategoriesByUser(User user){
        return categoryRepo.findCategoryByUser(user);
    }

    public Category getCategoryById(UUID id){
         return categoryRepo.findById(id);
    }

    public Category getCategoryByName(String name) {
        return categoryRepo.findByName(name);
    }

    public void addCategory(Category category){
        categoryRepo.save(category);
    }

    public void editCategory(String name, String description, UUID categoryId){
        Category findedCategory = categoryRepo.findById(categoryId);
        findedCategory.setName(name);
        findedCategory.setDescription(description);
        categoryRepo.save(findedCategory);
    }

    public void deleteCategory(UUID categoryId){
        categoryRepo.delete(categoryRepo.findById(categoryId));
    }
}
