package com.example.retrofit.service;


import com.example.retrofit.model.Product;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import retrofit2.Call;
import retrofit2.http.*;

import java.util.List;
import java.util.Map;

public interface RetrofitAPI {
    @GET("/product")
    Call<List<Product>> getProducts();
    @GET("/product/{id}")
    Call<Product> getProductById(@Path("id") Long id);
    @POST("/product")
    Call<Map> createProduct(@Query("id") Long id,
                            @Query("name") String productName,
                            @Query("price") Integer productPrice);
    @PUT("/product")
    Call<Product> updateProduct(@Body Product product);
    @DELETE("/product/{id}")
    Call<Map> deleteProduct(@Path("id") Long id);
}
