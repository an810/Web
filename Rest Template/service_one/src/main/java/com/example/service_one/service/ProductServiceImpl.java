package com.example.service_one.service;

import com.example.service_one.exception.BusinessException;
import com.example.service_one.model.Product;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    List<Product> products = new ArrayList<Product>();
    public ProductServiceImpl() {
        products.add(new Product(Long.valueOf(1), "product-1", 1000));
        products.add(new Product(Long.valueOf(2), "product-2", 2000));
        products.add(new Product(Long.valueOf(3), "product-3", 3000));
        products.add(new Product(Long.valueOf(4), "product-4", 4000));
    }

    @Override
    public List<Product> getProducts() {
        return products;
    }

    @Override
    public Product getProduct(Long id) {
        for (Product p : products) {
            if (p.getId().equals(id))
                return p;
        }
        throw new RuntimeException("Product not found!");
    }

    @Override
    public void createProduct(Long id, String name, Integer price) {
        for (Product p : products) {
            if (p.getId().equals(id))
                throw new RuntimeException("ID already existed");
        }
        products.add(new Product(id, name, price));
    }

    @Override
    public void updateProduct(Product product) {
        for (Product p : products) {
            if (p.getId().equals(product.getId())) {
                products.remove(p);
                products.add(product);
                return;
            }
        }
        throw new RuntimeException("ID does not exist");
    }

    @Override
    public void deleteProduct(Long id) {
        for (Product p : products) {
            if (p.getId().equals(id)) {
                products.remove(p);
                return;
            }
        }
        throw new RuntimeException("ID does not exist");
    }

}
