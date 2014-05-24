package com.springapp.mvc.repository;

import com.springapp.mvc.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 * Created with IntelliJ IDEA.
 * User: qfp
 * Date: 13-10-31
 * Time: 下午10:53
 * To change this template use File | Settings | File Templates.
 */

public interface UserRepository extends JpaRepository<User, Long> {

    @Modifying
    @Query(value = "update users u set u.firstname= ?1, u.lastname= ?2, u.email=?3 where u.id=?4", nativeQuery = true)
    public User updateAttributes(String firstName, String lastName, String email, Long id);
}

