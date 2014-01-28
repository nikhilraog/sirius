package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.AuthenticatedUser;
import org.shaon.utd.sirius.domain.UtdUser;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Fahad Shaon
 */
public interface UserService {
    @PersistenceContext
    void setEntityManager(EntityManager entityManager);

    Long count();

    List<UtdUser> list();

    UtdUser get(long id);

    void save(UtdUser utdUser);

    UtdUser findByUsername(String username);

    AuthenticatedUser getCurrentLoggedInUser();
}
