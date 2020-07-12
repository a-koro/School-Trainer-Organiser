/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assignment.school.services;

import com.assignment.school.entities.Trainer;
import com.assignment.school.exceptions.TrainerNotFoundException;
import java.util.List;

/**
 *
 * @author korov
 */
public interface TrainerServiceInterface {
    
    public void insertTrainer(Trainer trainer);
    
    public List<Trainer> getAllTrainers();
    
    public void deleteTrainer(int trainerId);
    
    //public Optional<Trainer> getTrainerById(int trainerId);
    
    public Trainer getTrainerById(int trainerId) throws TrainerNotFoundException;
    
    public Boolean checkIfExists(Trainer t);
    
    public List<Trainer> searchTrainers(String input);
}
