package com.example.search.service;

import com.example.search.bean.DishDetails;
import com.example.search.dao.DishDetailsDao;

import java.util.List;

public class DishDetailsService {
    public static List<DishDetails> getListDish() {
        return DishDetailsDao.getListDish();
    }

    public static List<DishDetails> getListDishWithCommand(String command) {
        return DishDetailsDao.getListDishWithCommand(command);
    }
}
