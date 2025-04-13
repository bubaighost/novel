package com.entity.vo;

import java.io.Serializable;

public class StatisticsVO implements Serializable {

    private String fenlei;

    private Long count;

    public String getFenlei() {
        return fenlei;
    }

    public void setFenlei(String fenlei) {
        this.fenlei = fenlei;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }
}
