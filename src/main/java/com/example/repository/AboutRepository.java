package com.example.repository;

import com.example.model.About;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AboutRepository extends JpaRepository<About, Long> {
    About save(About entity);
}
