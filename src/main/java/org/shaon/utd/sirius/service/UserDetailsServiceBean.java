package org.shaon.utd.sirius.service;

import org.shaon.utd.sirius.domain.AuthenticatedUser;
import org.shaon.utd.sirius.domain.UtdUser;
import org.shaon.utd.sirius.domain.UtdUserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @author Fahad Shaon
 */
@Service("userDetailsService")
public class UserDetailsServiceBean implements UserDetailsService {

    @Autowired
    private UserService userService;

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        UtdUser utdUser = userService.findByUsername(username);
        if (utdUser == null) {
            throw new UsernameNotFoundException("User not found");
        }

        Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

        List<UtdUserRole> userRoleList = utdUser.getUserRoleList();
        for (UtdUserRole utdUserRole : userRoleList) {
            authorities.add(new SimpleGrantedAuthority(utdUserRole.getRoleName()));
        }

        AuthenticatedUser authenticatedUser = new AuthenticatedUser();
        authenticatedUser.setUserId(utdUser.getId());
        authenticatedUser.setUsername(utdUser.getUsername());
        authenticatedUser.setPassword(utdUser.getPassword());
        authenticatedUser.setAccountNonExpired(utdUser.isActive());
        authenticatedUser.setAccountNonLocked(utdUser.isActive());
        authenticatedUser.setCredentialsNonExpired(utdUser.isActive());
        authenticatedUser.setEnabled(utdUser.isActive());
        authenticatedUser.setSalt(utdUser.getSalt());
        authenticatedUser.setAuthorities(authorities);

        return authenticatedUser;
    }
}
