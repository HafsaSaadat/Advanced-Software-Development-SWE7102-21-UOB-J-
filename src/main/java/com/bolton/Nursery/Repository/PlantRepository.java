package com.bolton.Nursery.Repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bolton.Nursery.Entity.Plant;

@Repository
public interface PlantRepository extends CrudRepository<Plant, Integer> {
	@Modifying(clearAutomatically = true)
	@Query("UPDATE Plant p SET p.pName = :pName, p.pDesc = :pDesc WHERE pID = :pID")

	Integer updateAllById(@Param("pID") Integer pID, @Param("pName") String pName, @Param("pDesc") String pDesc);

	@Query("select p from Plant p where upper(p.pName) like concat('%',upper(:searchPlant),'%')")
	Iterable<Plant> findByNameIgnoreCase(String searchPlant);

	@Query("select p from Plant p where p.pCategory = :searchPlantCategory")
	Iterable<Plant> findByCategory(String searchPlantCategory);
}
