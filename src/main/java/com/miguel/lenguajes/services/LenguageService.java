package com.miguel.lenguajes.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.miguel.lenguajes.models.Lenguage;
import com.miguel.lenguajes.repositories.LenguageRepository;

@Service
public class LenguageService {

    LenguageRepository lenguageRepository;

    public LenguageService(LenguageRepository lenguageRepository) {
        this.lenguageRepository = lenguageRepository;
    }

    public List<Lenguage> allLenguages() {
        return lenguageRepository.findAll();
    }

    public Lenguage createLenguage(Lenguage lenguage) {
        return lenguageRepository.save(lenguage);
    }

    public Lenguage findLenguage(Long id) {
        Optional<Lenguage> optionalLenguage = lenguageRepository.findById(id);
        if (optionalLenguage.isPresent()) {
            return optionalLenguage.get();
        } else {
            return null;
        }
    }

    public Lenguage updateLenguage(Long id, String name, String creator, double version) {
        Lenguage optionalLenguage = findLenguage(id);
        if (optionalLenguage != null) {
            optionalLenguage.setName(name);
            optionalLenguage.setCreator(creator);
            optionalLenguage.setVersion(version);
            return lenguageRepository.save(optionalLenguage);
        } else {
            return null;
        }
    }

    public void deleteLenguage(Long id) {
        Lenguage optioLenguage = findLenguage(id);
        if (optioLenguage != null) {
            lenguageRepository.deleteById(id);
        }
    }

}
