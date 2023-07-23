package com.miguel.lenguajes.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.miguel.lenguajes.models.Lenguage;

public interface LenguageRepository extends CrudRepository<Lenguage, Long> {

    List<Lenguage> findAll();

}
