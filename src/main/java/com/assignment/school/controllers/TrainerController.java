/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assignment.school.controllers;

import com.assignment.school.entities.Trainer;
import com.assignment.school.exceptions.TrainerNotFoundException;
import com.assignment.school.services.TrainerServiceInterface;
import java.util.Optional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author korov
 */
@Controller
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerServiceInterface;

    @GetMapping("/")
    public String homePage() {
        return "home";
    }

    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }

    @GetMapping("/preInsertTrainer")
    public String preInsertTrainer(ModelMap mm) {
        mm.addAttribute("formTrainer", new Trainer());
        return "trainerForm";
    }

    @PostMapping("/doInsertTrainer")
    public String doInsertTrainer(@Valid @ModelAttribute("formTrainer") Trainer trainer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainerForm";
        } else if (!trainerServiceInterface.checkIfExists(trainer)) {
            trainerServiceInterface.insertTrainer(trainer);
            return "redirect:/listOfTrainers";
        } else {
            return "trainerExists";
        }
    }

    @GetMapping("/listOfTrainers")
    public String listOfTrainers(ModelMap mm) {
        mm.addAttribute("allTrainers", trainerServiceInterface.getAllTrainers());
        return "allTrainers";
    }

    @GetMapping("/deleteTrainer/{trainerId}")
    public RedirectView deleteTrainer(@PathVariable int trainerId) {
        trainerServiceInterface.deleteTrainer(trainerId);
        return new RedirectView("/listOfTrainers");
    }

    // editTrainer method receiving an Optional<Trainer> object from service
    // class instead of a Trainer object
//    @GetMapping("/editTrainer/{trainerId}")
//    public String editTrainer(ModelMap mm, @PathVariable int trainerId) {
//        Trainer trainer = new Trainer();
//        Optional<Trainer> optionalTrainer = trainerServiceInterface.getTrainerById(trainerId);
//        if (optionalTrainer.isPresent()) {
//            trainer = optionalTrainer.get();
//            mm.addAttribute("formTrainer", trainer);
//            return "editTrainerForm";
//        }
//        else {
//            return "error";
//        }
//    }
    
    // new editTrainer method with try catch
    @GetMapping("/editTrainer/{trainerId}")
    public String editTrainer(ModelMap mm, @PathVariable int trainerId) {
        Trainer trainer = new Trainer();
        try {
            trainer = trainerServiceInterface.getTrainerById(trainerId);
            mm.addAttribute("formTrainer", trainer);
            return "editTrainerForm";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @PostMapping("/updateTrainer")
    public String updateTrainer(@Valid @ModelAttribute("formTrainer") Trainer trainer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainerForm";
        }
        trainerServiceInterface.insertTrainer(trainer);
        return "redirect:/listOfTrainers";
    }

    @PostMapping("/searchResults")
    public String searchResults(ModelMap mm, @RequestParam("input") String input) {
        mm.addAttribute("searchResultTrainers", trainerServiceInterface.searchTrainers(input));
        return "searchResults";
    }
}
