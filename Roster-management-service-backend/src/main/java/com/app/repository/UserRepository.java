package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    
	User findByUsernameAndPassword(String username, String password);
}
