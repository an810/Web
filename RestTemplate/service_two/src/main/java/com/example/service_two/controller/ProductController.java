package com.example.service_two.controller;

import com.example.service_two.model.Product;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/product/v2")
public class ProductController {
    public static final String SERVICE_ONE_URL = "http://localhost:8080/product";

    private final RestTemplate restTemplate;
    public ProductController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @GetMapping
    public ResponseEntity<List<Product>> getProducts() {
        ResponseEntity<List<Product>> response = restTemplate.exchange(SERVICE_ONE_URL, HttpMethod.GET,
                HttpEntity.EMPTY, new ParameterizedTypeReference<List<Product>>() {
                });
        return ResponseEntity.status(HttpStatus.OK).body(response.getBody());
    }
    @PostMapping
    public ResponseEntity<Map> createProduct(@RequestBody Product product) {
        UriComponentsBuilder builder = UriComponentsBuilder.fromHttpUrl(SERVICE_ONE_URL)
                .queryParam("id", product.getId())
                .queryParam("name", product.getProductName())
                .queryParam("price", product.getProductPrice());
        ResponseEntity<Map> response = restTemplate.exchange(builder.toUriString(), HttpMethod.POST, HttpEntity.EMPTY, Map.class);
        return response;
    }
    @PutMapping
    public ResponseEntity<Product> updateProduct(@RequestBody Product product) {
        HttpEntity<Product> request = new HttpEntity<>(product);
        ResponseEntity<Product> response = restTemplate.exchange(SERVICE_ONE_URL, HttpMethod.PUT, request, Product.class);
        return response;
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Map> deleteProduct(@PathVariable("id") Long id) {
        ResponseEntity<Map> response = restTemplate.exchange(SERVICE_ONE_URL + "/" + id, HttpMethod.DELETE, HttpEntity.EMPTY, Map.class);
        return response;
    }

}
