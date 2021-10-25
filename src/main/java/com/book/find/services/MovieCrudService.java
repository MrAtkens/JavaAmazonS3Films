package com.book.find.services;

import com.amazonaws.AmazonServiceException;
import com.book.find.config.BucketName;
import com.book.find.dto.FilmDto;
import com.book.find.models.Auth.User;
import com.book.find.models.Category;
import com.book.find.models.Film;
import com.book.find.repos.FilmRepo;
import org.springframework.stereotype.Service;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@Service
public class MovieCrudService {
    private final FilmRepo filmRepo;
    private final FileStore fileStore;

    public MovieCrudService(FilmRepo filmRepo, FileStore fileStore) {
        this.filmRepo = filmRepo;
        this.fileStore = fileStore;
    }

    public Iterable<Film> getFilms(){
        return filmRepo.findAll();
    }

    public Iterable<Film> getFilmsAdmin(User user){
        return filmRepo.findByUser(user);
    }

    public Film getFilmById(UUID id){
        return filmRepo.findById(id);
    }

    public Film getFilmByIdByUser(UUID id, User user){
        Film film = filmRepo.findById(id);
        if(film.getUser().getId().equals(user.getId()))
            return filmRepo.findById(id);
        return null;
    }

    public void addFilm(FilmDto film, Category category, User user) throws IOException {
        String imagePath = "";
        String filmPath = "";

        try {
            Map<String, String> metadataImage = new HashMap<>();
            metadataImage.put("Content-Type", film.image.getContentType());
            metadataImage.put("Content-Length", String.valueOf(film.image.getSize()));
            String path = String.format("%s/%s", BucketName.TODO_IMAGE.getBucketName(), user.getId());
            String fileName = String.format("%s", UUID.randomUUID()+film.image.getOriginalFilename());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(film.image.getInputStream());
            fileStore.upload(path, fileName, Optional.of(metadataImage), bufferedInputStream);
            imagePath = "https://springstreamit.s3.eu-central-1.amazonaws.com/" + user.getId() + "/" + fileName;
        } catch (AmazonServiceException e) {
            System.out.println(e.getErrorMessage());
            throw new IllegalStateException("Failed to upload the file", e);
        }
        try {
            Map<String, String> metadata = new HashMap<>();
            metadata.put("Content-Type", film.film.getContentType());
            metadata.put("Content-Length", String.valueOf(film.film.getSize()));
            String path = String.format("%s/%s", BucketName.TODO_IMAGE.getBucketName(), user.getId());
            String fileName = String.format("%s", UUID.randomUUID()+film.film.getOriginalFilename());
            fileStore.upload(path, fileName, Optional.of(metadata), film.film.getInputStream());
            filmPath = "https://springstreamit.s3.eu-central-1.amazonaws.com/" + user.getId() + "/" + fileName;
        } catch (AmazonServiceException e) {
            System.out.println(e.getErrorMessage());
            throw new IllegalStateException("Failed to upload the file", e);
        }
        Film newFilm = new Film (film.name, film.rating, film.description, film.director,
                film.country, film.scenarist, film.producer, category, user, filmPath, imagePath,
                film.boxOfficeInDollar, film.premiere, film.age);
        filmRepo.save(newFilm);
    }

    public void editFilm(FilmDto film, Category category, UUID filmId, User user) throws IOException {
        Film foundFilm = filmRepo.findById(filmId);
        String imagePath = "";
        String filmPath = "";

        try {
            Map<String, String> metadataImage = new HashMap<>();
            metadataImage.put("Content-Type", film.image.getContentType());
            metadataImage.put("Content-Length", String.valueOf(film.image.getSize()));
            String path = String.format("%s/%s", BucketName.TODO_IMAGE.getBucketName(), user.getId());
            String fileName = String.format("%s", UUID.randomUUID()+film.image.getOriginalFilename());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(film.image.getInputStream());
            fileStore.upload(path, fileName, Optional.of(metadataImage), bufferedInputStream);
            imagePath = "https://springstreamit.s3.eu-central-1.amazonaws.com/" + user.getId() + "/" + fileName;
        } catch (AmazonServiceException e) {
            System.out.println(e.getErrorMessage());
            throw new IllegalStateException("Failed to upload the file", e);
        }
        try {
            Map<String, String> metadata = new HashMap<>();
            metadata.put("Content-Type", film.film.getContentType());
            metadata.put("Content-Length", String.valueOf(film.film.getSize()));
            String path = String.format("%s/%s", BucketName.TODO_IMAGE.getBucketName(), user.getId());
            String fileName = String.format("%s", UUID.randomUUID()+film.film.getOriginalFilename());
            fileStore.upload(path, fileName, Optional.of(metadata), film.film.getInputStream());
            filmPath = "https://springstreamit.s3.eu-central-1.amazonaws.com/" + user.getId() + "/" + fileName;
        } catch (AmazonServiceException e) {
            System.out.println(e.getErrorMessage());
            throw new IllegalStateException("Failed to upload the file", e);
        }
        foundFilm.setName(film.name);
        foundFilm.setRating(film.rating);
        foundFilm.setAge(film.age);
        foundFilm.setDescription(film.description);
        foundFilm.setDirector(film.director);
        foundFilm.setCountry(film.country);
        foundFilm.setScenarist(film.scenarist);
        foundFilm.setProducer(film.producer);
        foundFilm.setCategory(category);
        foundFilm.setFilmPath(filmPath);
        foundFilm.setFilmImagePath(imagePath);
        foundFilm.setBoxOfficeInDollar(film.boxOfficeInDollar);
        foundFilm.setPremiere(film.premiere);
        foundFilm.setAge(film.age);
        filmRepo.save(foundFilm);
    }

    public void deleteFilm(UUID id) throws IOException {
        filmRepo.delete(filmRepo.findById(id));
    }
}
