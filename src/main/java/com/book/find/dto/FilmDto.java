package com.book.find.dto;

import org.springframework.web.multipart.MultipartFile;

import java.sql.Date;

public class FilmDto {
    public String name;
    public String description;
    public String director;
    public String scenarist;

    public String producer;
    public String country;
    public Double rating;


    public Date premiere;
    public Integer boxOfficeInDollar;
    public Integer age;

    public MultipartFile image;

    public MultipartFile film;

    public FilmDto(String name, String description, String director, String scenarist, String producer, String country, Double rating, Date premiere, Integer boxOfficeInDollar, Integer age, MultipartFile image, MultipartFile film) {
        this.name = name;
        this.description = description;
        this.director = director;
        this.scenarist = scenarist;
        this.producer = producer;
        this.country = country;
        this.rating = rating;
        this.premiere = premiere;
        this.boxOfficeInDollar = boxOfficeInDollar;
        this.age = age;
        this.image = image;
        this.film = film;
    }
}
