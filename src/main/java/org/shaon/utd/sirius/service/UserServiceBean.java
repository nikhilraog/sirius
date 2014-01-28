package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.AuthenticatedUser;
import org.shaon.utd.sirius.domain.UtdUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Fahad Shaon
 */
@Service(value = "userService")
public class UserServiceBean implements UserService {

    private static final Logger log = LoggerFactory.getLogger(UserServiceBean.class);

    protected EntityManager entityManager;

    @PersistenceContext
    public void setEntityManager(final EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public Long count() {
        log.debug("count");
        return (Long) entityManager.createQuery("SELECT COUNT(n) FROM UtdUser n").getSingleResult();
    }

    public List<UtdUser> list() {
        log.debug("list");
        return (List<UtdUser>) entityManager.createQuery("SELECT n FROM UtdUser n").getResultList();
    }

    public UtdUser get(long id) {
        log.debug("get {}", id);
        return entityManager.find(UtdUser.class, id);
    }

    public UtdUser findByUsername(String username) {
        log.debug("findByUsername {}", username);

        return (UtdUser) entityManager.createQuery("SELECT u FROM UtdUser u Where u.username = :username")
                .setParameter("username", username)
                .getSingleResult();
    }

    public void save(UtdUser utdUser) {

        if (utdUser.getId() == null) {
            entityManager.persist(utdUser);
        } else if (!entityManager.contains(utdUser)) {
            entityManager.merge(utdUser);
        }
    }

    public AuthenticatedUser getCurrentLoggedInUser() {
        return (AuthenticatedUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
}
