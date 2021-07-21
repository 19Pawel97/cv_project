package com.example.repository;

import com.example.model.About;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface AboutRepository extends JpaRepository<About, Long> {
    @Override
    Optional<About> findById(Long id);
    About save(About entity);
}
