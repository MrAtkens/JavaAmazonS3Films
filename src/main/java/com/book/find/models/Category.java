package com.book.find.models;

import javax.persistence.Entity;

@Entity(name = "Category")
public class Category extends MainEntity {
    private String name;
    private String description;

    public Category(){}

    public Category(String name, String description) {
        this.name = name;
        this.description = description;
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
