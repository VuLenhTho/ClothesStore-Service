package com.vulenhtho.model.request;

import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
public class UserRequestApi {
    private String userName;
    private String password;
    private Set<RoleRequest> roles = new HashSet<>();


}
