package com.example.feignclient;

import com.example.feignclient.model.Product;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@FeignClient(name = "product-client", url = "http://localhost:8080", path = "/product")
public interface ProductClient {
    @GetMapping
    ResponseEntity<List<Product>> getProducts();
    @GetMapping("/{id}")
    ResponseEntity<Product> getProductById(@PathVariable Long id);
    @PostMapping
    ResponseEntity<Map> createProduct(@RequestParam("id") Long id,
                                      @RequestParam("name") String productName,
                                      @RequestParam("price") Integer productPrice);
    @PutMapping
    ResponseEntity<Product> updateProduct(@RequestBody Product product);
    @DeleteMapping("/{id}")
    ResponseEntity<Map> deleteProduct(@PathVariable Long id);
}
