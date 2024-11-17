package com.example.pictgram.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.pictgram.entity.Topic;

public interface TopicRepository extends JpaRepository<Topic, Long> {

    List<Topic> findAllByOrderByUpdatedAtDesc();
    
}
