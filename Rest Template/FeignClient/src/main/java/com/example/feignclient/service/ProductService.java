package com.example.feignclient.service;

import com.example.feignclient.ProductClient;
import com.example.feignclient.model.Product;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ProductService {
    private final ProductClient productClient;
    public ProductService(ProductClient productClient) {
        this.productClient = productClient;
    }

    public List<Product> getAllProduct() {
        ResponseEntity<List<Product>> res = productClient.getProducts();
        return res.getBody();
    }
    public Product getProduct(Long id) {
        ResponseEntity<Product> res = productClient.getProductById(id);
        return res.getBody();
    }

    public Map<String, String> add(Product product) {
        ResponseEntity<Map> res = productClient.createProduct(product.getId(),product.getProductName(),product.getProductPrice());
        return res.getBody();
    }

    public Product update(Product product) {
        ResponseEntity<Product> res = productClient.updateProduct(product);
        return res.getBody();
    }

    public Map<String, String> delete(Long id) {
        ResponseEntity<Map> res = productClient.deleteProduct(id);
        return res.getBody();
    }

}
