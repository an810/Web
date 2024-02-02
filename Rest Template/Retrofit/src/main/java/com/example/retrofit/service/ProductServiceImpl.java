package com.example.retrofit.service;

import com.example.retrofit.model.Product;
import com.example.retrofit.util.RetrofitUtil;
import org.springframework.stereotype.Service;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ProductServiceImpl implements ProductService{
    private Retrofit retrofit;
    private RetrofitAPI retrofitAPI;
    public ProductServiceImpl() {
        retrofit = RetrofitUtil.getRetrofit();
        retrofitAPI = retrofit.create(RetrofitAPI.class);
    }
    @Override
    public List<Product> getAllProduct() {
        List<Product> productResponse = new ArrayList<>();
        Call<List<Product>> response = retrofitAPI.getProducts();
        try {
            Response<List<Product>> finalResponse = response.execute();
            if (finalResponse.isSuccessful() && finalResponse.body() != null) {
                productResponse = finalResponse.body();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return productResponse;
    }
    @Override
    public Product getProduct(Long id) {
        Product productResponse = new Product();
        Call<Product> response = retrofitAPI.getProductById(id);
        try {
            Response<Product> finalResponse = response.execute();
            if (finalResponse.isSuccessful() && finalResponse.body() != null) {
                productResponse = finalResponse.body();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return productResponse;
    }
    @Override
    public Map<String, String> create(Product product) {
        Map<String, String> productResponse = new HashMap<>();
        Call<Map> response = retrofitAPI.createProduct(product.getId(),
                product.getProductName(),
                product.getProductPrice());
        try {
            Response<Map> finalResponse = response.execute();
            if (finalResponse.isSuccessful() && finalResponse.body() != null) {
                productResponse = finalResponse.body();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return productResponse;
    }
    @Override
    public Product update(Product product) {
        Product productResponse = new Product();
        Call<Product> response = retrofitAPI.updateProduct(product);
        try {
            Response<Product> finalResponse = response.execute();
            if (finalResponse.isSuccessful() && finalResponse.body() != null) {
                productResponse = finalResponse.body();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return productResponse;
    }
    @Override
    public Map<String, String> delete(Long id) {
        Map<String, String> productResponse = new HashMap<>();
        Call<Map> response = retrofitAPI.deleteProduct(id);
        try {
            Response<Map> finalResponse = response.execute();
            if (finalResponse.isSuccessful() && finalResponse.body() != null) {
                productResponse = finalResponse.body();
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return productResponse;
    }
}
