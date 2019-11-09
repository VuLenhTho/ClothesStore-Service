package com.vulenhtho.model.request;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter@Setter
public class BriefProductFilterWebRequest {
    private Integer totalPages;
    private Integer currentPage;
    List<BriefProductWebRequest> products;
}
