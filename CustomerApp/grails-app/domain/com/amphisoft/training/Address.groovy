package com.amphisoft.training;

public class Address implements Serializable{
    String address1
    String address2
    String state
    int pin
    // Customer customer

    static belongsTo = [customer:Customer]

    public Address(){}
    
}