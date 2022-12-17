package com.example.buysell.services;

import com.example.buysell.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long id = 0;

    {
        products.add(new Product(++id, "PlayStation 5", "Игровая к̶л̶а̶в̶и̶а̶т̶у̶р̶а̶ пристака", 6700, "Ekaterinburg", "Nikita"));
        products.add(new Product(++id,"MacBook", "Дорогой статусный ноутбук", 6700, "Moscow", "Nikita"));
    }

    public List<Product> getProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product.setId(++id);
        products.add(product);
    }

    public void deleteProduct(long id){
        products.removeIf(product -> product.getId() == id);
    }

    public Product getProductById(long id) {
        for (Product product : products) {
            if (product.getId() == id) return product;
        }
        return null;
    }
}
