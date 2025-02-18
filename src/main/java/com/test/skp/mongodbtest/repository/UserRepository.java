package com.test.skp.mongodbtest.repository;


import com.test.skp.mongodbtest.model.User;
import org.springframework.data.mongodb.repository.MongoRepository;


public interface UserRepository extends MongoRepository<User, String> {}

