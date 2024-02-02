package com.example.retrofit.service;

import com.example.retrofit.model.Product;

import java.util.List;
import java.util.Map;

public interface ProductService {
    List<Product> getAllProduct();
    Product getProduct(Long id);
    Map<String, String> create(Product product);
    Product update(Product product);
    Map<String, String> delete(Long id);
}
