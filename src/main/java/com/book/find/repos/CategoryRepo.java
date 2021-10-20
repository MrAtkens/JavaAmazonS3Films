package com.book.find.repos;

import com.book.find.models.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface CategoryRepo extends JpaRepository<Category, Long> {
    Category findByName(String tag);
    Category findById(UUID id);
}