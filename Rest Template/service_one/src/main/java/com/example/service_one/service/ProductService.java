package com.example.service_one.service;

import com.example.service_one.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getProducts();
    Product getProduct(Long id);
    void createProduct(Long id, String name, Integer price);
    void updateProduct(Product product);
    void deleteProduct(Long id);
}
