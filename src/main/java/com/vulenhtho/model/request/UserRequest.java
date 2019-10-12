package com.vulenhtho.model.request;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class UserRequest {
    private Long id;
    private String userName;
    private String password;
    private String fullName;
    private String email;
    private String phone;
    private boolean sex;
    private List<Long> ids;


}
