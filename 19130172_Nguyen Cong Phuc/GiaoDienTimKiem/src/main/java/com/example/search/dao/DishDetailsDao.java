package com.example.search.dao;

import com.example.search.bean.DishDetails;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DishDetailsDao {
    public static List<DishDetails> getListDishWithCommand(String key) {
        List<DishDetails> list = new ArrayList<>();
        Connection connection = Connect.getInstance().getConnection();
        try {
            String sql = "Select * from chitietmonan where tenmonan like ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%"+key+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                DishDetails dish = new DishDetails(resultSet.getInt(1), resultSet.getString(2),
                        resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getDouble(6));
                list.add(dish);
            }
        } catch (SQLException e) {
            System.out.println("Loi ket noi :" + e.getMessage());
        }
        return list;
    }

    public static List<DishDetails> getListDish() {
        List<DishDetails> list = new ArrayList<>();
        Connection connection = Connect.getInstance().getConnection();
        try {
            String sql = "Select * from chitietmonan";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                DishDetails dish = new DishDetails(resultSet.getInt(1), resultSet.getString(2),
                        resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getDouble(6));
                list.add(dish);
            }
        } catch (SQLException e) {
            System.out.println("Loi ket noi voi loi la: " + e.getMessage());
        }
        return list;
    }
}
