package com.miguel.lenguajes.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.miguel.lenguajes.models.Lenguage;
import com.miguel.lenguajes.services.LenguageService;

@Controller
@RequestMapping("/languages")
public class LenguageController {

    private final LenguageService lenguageService;

    public LenguageController(LenguageService lenguageService) {
        this.lenguageService = lenguageService;
    }

    @GetMapping("")
    public String lenguages(Model model) {
        List<Lenguage> lenguages = lenguageService.allLenguages();
        model.addAttribute("lenguages", lenguages);
        return "language.jsp";
    }

    @PostMapping("")
    public String create(@RequestParam(value = "name") String name,
            @RequestParam(value = "creator") String creator,
            @RequestParam(value = "version") double version) {
        Lenguage lenguage = new Lenguage(name, creator, version);
        lenguageService.createLenguage(lenguage);
        return "redirect:/languages";
    }

    @RequestMapping("/{id}")
    public String Show(@PathVariable("id") Long id, Model model){
        Lenguage lenguage = lenguageService.findLenguage(id);
        model.addAttribute("language", lenguage);
        return "showlenguage.jsp";
    }

    @RequestMapping("{id}/edit")
    public String showEditaString(@PathVariable("id") Long id, Model model){
        Lenguage lenguage =lenguageService.findLenguage(id);
        model.addAttribute("language", lenguage);
        return "editar.jsp";
    }

    
    @PostMapping("/{id}")
    public String Change(@PathVariable("id") Long id, @RequestParam(value = "name") String name,
            @RequestParam(value = "creator") String creator,
            @RequestParam(value = "version") double version) {
        lenguageService.updateLenguage(id, name, creator, version);
        return "redirect:/languages";
    }

    @DeleteMapping("/{id}/eliminar")
    public String Delete(@PathVariable("id") Long id){
        lenguageService.deleteLenguage(id);
         return "redirect:/languages";
    }

}
