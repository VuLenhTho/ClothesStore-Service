package com.vulenhtho.controller;

import com.vulenhtho.model.request.ProductColorSizeRequest;
import com.vulenhtho.model.request.ProductWebRequest;
import com.vulenhtho.model.request.RoleRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {
    private RestTemplate restTemplate;

    public ProductController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @GetMapping("/web/products")
    public ModelAndView webProducts(@RequestParam(required = false) String category) {
        return new ModelAndView("product-list");
    }

    @GetMapping("/web/product/{id}")
    public ModelAndView webProductDetail(@PathVariable String id) {
        ModelAndView modelAndView = new ModelAndView("product-detail");
        ProductWebRequest productWebRequest = restTemplate.getForObject("http://localhost:8888/web/product/"+id, ProductWebRequest.class);
        modelAndView.addObject("product", productWebRequest);
        List<Long> sizes = new ArrayList<>();
        List<Long> colors = new ArrayList<>();
        List<Long> amounts = new ArrayList<>();
        for (ProductColorSizeRequest p : productWebRequest.getProductColorSizes()) {
            sizes.add(p.getSizeId());
            colors.add(p.getColorId());
            amounts.add(p.getAmount());
        }
        modelAndView.addObject("sizes",sizes);
        modelAndView.addObject("colors",colors);
        modelAndView.addObject("amounts",amounts);

        String[] photoList = productWebRequest.getPhotoList().split(",");
        List<String> bigImg = new ArrayList<>();
        List<String> smImg = new ArrayList<>();
        for (int i = 0; i < photoList.length; i++) {
            if (i%2 == 0){
                bigImg.add(photoList[i]);
            }else {
                smImg.add(photoList[i]);
            }
        }
        modelAndView.addObject("bigImg",bigImg);
        modelAndView.addObject("smImg",smImg);
        return modelAndView;
    }

}
