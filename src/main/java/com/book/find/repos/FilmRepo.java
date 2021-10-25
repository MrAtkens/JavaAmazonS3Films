package com.book.find.repos;

import com.book.find.models.Auth.User;
import com.book.find.models.Film;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface FilmRepo extends JpaRepository<Film, Long> {
    List<Film> findByName(String tag);
    Film findById(UUID id);
    List<Film> findByUser(User user);
}
