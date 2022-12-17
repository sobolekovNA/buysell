package com.example.buysell.models;

import jakarta.annotation.Nullable;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {
    @Nullable
    private long id;
    private String title;
    private String description;
    private int price;
    private String city;
    private String author;
}
