package com.book.find.services;

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

    public Category getCategoryById(UUID id){
         return categoryRepo.findById(id);
    }

    public Category getCategoryByName(String name) {
        return categoryRepo.findByName(name);
    }

    public void addCategory(Category category){
        categoryRepo.save(category);
    }

    public void editCategory(Category category, UUID categoryId){
        Category findedCategory = categoryRepo.findById(categoryId);
        findedCategory.setName(category.getName());
        findedCategory.setDescription(category.getDescription());
        categoryRepo.save(findedCategory);
    }

    public void deleteCategory(UUID categoryId){
        categoryRepo.delete(categoryRepo.findById(categoryId));
    }
}
