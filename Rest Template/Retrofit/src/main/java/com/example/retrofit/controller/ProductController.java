package com.example.retrofit.controller;

import com.example.retrofit.model.Product;
import com.example.retrofit.service.ProductService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/retrofit")
public class ProductController {
    private final ProductService service;
    public ProductController(ProductService service) {
        this.service = service;
    }
    @GetMapping
    public List<Product> getProducts() {
        return service.getAllProduct();
    }
    @GetMapping("/{id}")
    public Product getProduct(@PathVariable Long id) {
        return service.getProduct(id);
    }
    @PostMapping
    public Map<String, String> createProduct(@RequestBody Product product){
        return service.create(product);
    }
    @PutMapping
    public Product updateProduct(@RequestBody Product product) {
        return service.update(product);
    }
    @DeleteMapping("/{id}")
    public Map<String, String> deleteProduct(@PathVariable Long id) {
        return service.delete(id);
    }
}
