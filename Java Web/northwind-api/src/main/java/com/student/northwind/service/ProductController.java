package com.student.northwind.service;

import com.student.northwind.domain.Products;
import com.student.northwind.repository.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@RestController
@RequestMapping("/productts")
public class ProductController {
    @Autowired
    private ProductRepo productRepo;
    @GetMapping
    public List<Products> getAllProduct() {
        return productRepo.findAll();
    }
    @PostMapping
    public Products createProduct(@RequestBody Products requestProduct) {
        return productRepo.save(requestProduct);
    }
    @PutMapping("{id}")
    public Products updateProduct(@RequestBody Products requestProduct, @PathVariable int id) {
        Products product = productRepo.findById(id).orElseThrow(()->new EntityNotFoundException("Khong tim thay ban ghi"));
        product.setProductID(requestProduct.getProductID());
        product.setProductName(requestProduct.getProductName());
        product.setQuantityPerUnit(requestProduct.getQuantityPerUnit());
        product.setUnitPrice(requestProduct.getUnitPrice());
        product.setUnitsInStock(requestProduct.getUnitsInStock());
        product.setUnitsOnOrder(requestProduct.getUnitsOnOrder());
        product.setReorderLevel(requestProduct.getReorderLevel());
        product.setDiscontinued(requestProduct.getDiscontinued());
        return productRepo.save(product);
    }

    @DeleteMapping("{id}")
    public void deleteProduct(@PathVariable int id) {
        productRepo.existsById(id);
    }


}
