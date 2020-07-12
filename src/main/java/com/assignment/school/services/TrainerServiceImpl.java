/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assignment.school.services;

import com.assignment.school.entities.Trainer;
import com.assignment.school.exceptions.TrainerNotFoundException;
import com.assignment.school.repos.TrainerRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author korov
 */
@Service
public class TrainerServiceImpl implements TrainerServiceInterface {
    
    @Autowired
    TrainerRepository trainerRepository;

    @Override
    @Transactional
    public void insertTrainer(Trainer trainer) {
        trainerRepository.save(trainer);
    }

    @Override
    public List<Trainer> getAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    @Transactional
    public void deleteTrainer(int trainerId) {
        if (trainerRepository.existsById(trainerId)) {
            trainerRepository.deleteById(trainerId);
        }
    }

//    @Override
//    public Optional<Trainer> getTrainerById(int trainerId) {
//        // TODO move here the conditional statement (.ispresent())
//        return trainerRepository.findById(trainerId);
//    }
    
    @Override
    public Trainer getTrainerById(int trainerId) throws TrainerNotFoundException {
        Optional<Trainer> trainer = trainerRepository.findById(trainerId);
        if (trainer.isPresent()) {
            return trainer.get();
        }
        else {
            throw new TrainerNotFoundException("No such id found.");
        }
    }

    @Override
    public Boolean checkIfExists(Trainer t) {
        return trainerRepository.existsTrainerByFirstNameAndLastName(t.getFirstName(), t.getLastName());
    }

    @Override
    public List<Trainer> searchTrainers(String input) {
        return trainerRepository.getTrainersByFirstnameAndLastname(input);
    }
    
    
}
