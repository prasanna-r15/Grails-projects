package com.amphisoft.training;

public class Customer implements Serializable{
    String name
    String email
    String phone
    Address address
    String password
    List purchaseList

    
    static hasOne = [address:Address]
    static hasMany =[purchaseList:Purchase]
    

    public Customer() {}
}

