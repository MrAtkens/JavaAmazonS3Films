package com.book.find.models;

import com.book.find.models.Auth.User;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity(name = "Category")
public class Category extends MainEntity {
    private String name;
    private String description;
    @ManyToOne
    private User user;

    public Category(){}

    public Category(String name, String description, User user) {
        this.name = name;
        this.description = description;
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
