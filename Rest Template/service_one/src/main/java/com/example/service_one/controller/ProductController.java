package com.example.service_one.controller;

import com.example.service_one.model.Product;
import com.example.service_one.service.ProductService;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/product")
public class ProductController {

    private final ProductService productService;
    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping
    public List<Product> getProducts() {
        return productService.getProducts();
    }

    @GetMapping("/{id}")
    public Product getProduct(@PathVariable Long id) {
        return productService.getProduct(id);
    }

    @PostMapping
    public Map<String, String> createProduct(@RequestParam Long id, @RequestParam String name, @RequestParam Integer price) {
        productService.createProduct(id, name, price);
        Map<String, String> map = new HashMap<>();
        map.put("status", "Product created");
        return map;
    }

    @PutMapping
    public Product updateProduct(@RequestBody Product product) {
        productService.updateProduct(product);
        return product;
    }

    @DeleteMapping("/{id}")
    public Map<String, String> deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        Map<String, String> map = new HashMap<>();
        map.put("status", "Product deleted");
        return map;
    }

}
