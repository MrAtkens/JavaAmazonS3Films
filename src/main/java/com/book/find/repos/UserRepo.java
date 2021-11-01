package com.book.find.repos;

import com.book.find.models.Auth.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
    User findById(UUID id);

}
