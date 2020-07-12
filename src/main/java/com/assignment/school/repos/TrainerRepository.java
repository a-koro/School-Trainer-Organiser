/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assignment.school.repos;

import com.assignment.school.entities.Trainer;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author korov
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer> {
    
    public Boolean existsTrainerByFirstNameAndLastName(String firstName, String lastName);
    
    @Query("SELECT t FROM Trainer t WHERE t.firstName LIKE :input% OR t.lastName LIKE :input%")
    public List<Trainer> getTrainersByFirstnameAndLastname(@Param("input") String input);
}
