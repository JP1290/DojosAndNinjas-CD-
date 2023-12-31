package com.codingdojo.dojosNinjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.dojosNinjas.models.Dojo;
import com.codingdojo.dojosNinjas.models.Ninja;

public interface NinjaRepository extends CrudRepository<Ninja, Long> {
	
	List<Ninja> findAll();
	List<Ninja> findNinjasInDojo(Dojo dojo);

}
