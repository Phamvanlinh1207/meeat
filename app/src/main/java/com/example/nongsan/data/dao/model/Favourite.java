package com.example.nongsan.data.dao.model;

public class Favourite {
    public static final String SQL_CREATE_ENTRIES =
            "CREATE TABLE favourites (" +
                    "id INTEGER PRIMARY KEY," +
                    "name TEXT," +
                    "price NUMERIC," +
                    "image TEXT,"+
                    "categoryId INTEGER)";
    public static final String SQL_DELETE_ENTRIES =
            "DROP TABLE IF EXISTS favourites";
    public int id;
    public String name;
    public double price;
    public String image;
    public int categoryId;

    public Favourite(int id, String name, double price, String image, int categoryId) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.image = image;
        this.categoryId = categoryId;
    }
}
