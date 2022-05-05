package com.bolton.Nursery.Repository;

import org.springframework.data.repository.CrudRepository;

import com.bolton.Nursery.Entity.Users;

public interface UserRepository extends CrudRepository<Users, Integer> {

}
