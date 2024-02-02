package com.example.retrofit.util;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class RetrofitUtil {
    private static Retrofit retrofit = null;

    public static Retrofit getRetrofit() {
        if (retrofit == null) {
            retrofit = new Retrofit.Builder().baseUrl("http://localhost:8080")
                    .addConverterFactory(GsonConverterFactory.create()).build();
        }
        return retrofit;
    }
}
