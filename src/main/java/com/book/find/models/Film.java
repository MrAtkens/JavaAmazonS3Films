package com.book.find.models;

import javax.persistence.*;
import java.sql.Date;

@Entity(name = "Film")
public class Film extends MainEntity {

    private String name;
    @Column(length=1000)
    private String description;
    private Double rating;
    private String director;
    private String country;
    private String scenarist;
    private String producer;
    @ManyToOne
    private Category category;
    private String filmImagePath;
    private String filmPath;
    private Integer boxOfficeInDollar;
    private Date premiere;
    private Integer age;
    private Integer countOfView = 0;

    public Film() {

    }

    public Film(String name, Double rating, String description, String director, String country, String scenarist, String producer,
                Category category, String filmPath, String filmImagePath, Integer boxOfficeInDollar, Date premiere, Integer age) {
        this.name = name;
        this.rating = rating;
        this.description = description;
        this.director = director;
        this.country = country;
        this.scenarist = scenarist;
        this.producer = producer;
        this.category = category;
        this.filmPath = filmPath;
        this.filmImagePath = filmImagePath;
        this.boxOfficeInDollar = boxOfficeInDollar;
        this.premiere = premiere;
        this.age = age;
    }

    public String getDescription() {
        return description;
    }

    public String getFilmImagePath() {
        return filmImagePath;
    }

    public void setFilmImagePath(String filmImagePath) {
        this.filmImagePath = filmImagePath;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getScenarist() {
        return scenarist;
    }

    public void setScenarist(String scenarist) {
        this.scenarist = scenarist;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public Category getCategory() {
        return this.category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getFilmPath() {
        return filmPath;
    }

    public void setFilmPath(String filmPath) {
        this.filmPath = filmPath;
    }

    public Integer getBoxOfficeInDollar() {
        return boxOfficeInDollar;
    }

    public void setBoxOfficeInDollar(Integer boxOfficeInDollar) {
        this.boxOfficeInDollar = boxOfficeInDollar;
    }

    public Date getPremiere() {
        return premiere;
    }

    public void setPremiere(Date premiere) {
        this.premiere = premiere;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getCountOfView() {
        return countOfView;
    }

    public void setCountOfView() {
        this.countOfView++;
    }
}


