package com.amphisoft.training;

public class Purchase implements Serializable{
    String product
    String amount
    String brand
    String rating

    static belongsTo = [customer:Customer]


    public Purchase(){}
}