package com.bolton.Nursery.Service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bolton.Nursery.Entity.Plant;
import com.bolton.Nursery.Repository.PlantRepository;

@Service
@Transactional
public class PlantService {
	@Autowired
	PlantRepository plantRepository;

	public void storePlant(Plant plant) {
		plantRepository.save(plant);
	}

	public Iterable<Plant> displayPlants() {
		return plantRepository.findAll();
	}

	public Iterable<Plant> findByNameIgnoreCase(String pName) {
		return plantRepository.findByNameIgnoreCase(pName);
	}

	public Iterable<Plant> findByCategory(String searchPlantCategory) {
		return plantRepository.findByCategory(searchPlantCategory);
	}

	public Plant viewById(Integer id) {
		return plantRepository.findById(id).get();
	}

	public void deleteById(Integer id) {
		plantRepository.deleteById(id);
	}

	public void updateById(Integer id, String pName) {
		Plant plant = plantRepository.findById(id).get();
		plant.setpName(pName);
		plantRepository.save(plant);
	}

	public void updateAllById(Integer uppid, String unname, String uddesc) {
		plantRepository.updateAllById(uppid, unname, uddesc);
	}
}
