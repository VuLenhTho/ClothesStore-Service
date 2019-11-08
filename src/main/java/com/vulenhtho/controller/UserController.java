package com.vulenhtho.controller;


import com.vulenhtho.model.request.ProductWebRequest;
import com.vulenhtho.model.request.RoleRequest;
import com.vulenhtho.model.request.UpdateUserRequest;
import com.vulenhtho.model.request.UserFilterRequest;
import com.vulenhtho.model.response.UserFilterResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    private RestTemplate restTemplate;


    public UserController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @GetMapping("/users")
    public ModelAndView getAllUser(
            @RequestParam(defaultValue = "1", required = false) Integer page
            , @RequestParam(defaultValue = "5", required = false) Integer size
            , @RequestParam(defaultValue = "all",required = false) String status
            , @RequestParam(defaultValue = "all",required = false) String sex
            , @RequestParam(defaultValue = "all",required = false) String sort
            , @RequestParam(required = false) String search) {

        ModelAndView mav = new ModelAndView("user-table");
        String pageSt = Integer.toString(page - 1);
        String sizeSt = Integer.toString(size);
        String url = "http://localhost:8888/users?page=" + pageSt + "&size=" + sizeSt;
        if (sex != null && !sex.equals("all")) url += "&sex=" + sex;
        if (status != null && !status.equals("all")) url += "&status=" + status;
        if (sort != null && !sort.equals("all")) url += "&sort=" + sort;
        if (search != null && search.length()>0) url += "&search=" + search;

        UserFilterRequest users = restTemplate.getForObject(url, UserFilterRequest.class);
        mav.addObject("data", users);
        UserFilterResponse userFilterResponse = new UserFilterResponse(sort, search, status, sex);
        mav.addObject("filter", userFilterResponse);
        return mav;
    }

    @GetMapping("/user/{id}")
    public ModelAndView update(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView("user-updateOrCreate");
        String userID = String.valueOf(id);
        UpdateUserRequest user = restTemplate.getForObject("http://localhost:8888/user/" + userID, UpdateUserRequest.class);
        List<RoleRequest> roleRequests = restTemplate.getForObject("http://localhost:8888/roles", List.class);
        mav.addObject("roles", roleRequests);
        mav.addObject("user", user);


        return mav;
    }


}
