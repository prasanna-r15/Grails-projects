package com.amphisoft.training;

public class CustomerService{
    def saveCustomer(custIns){
        if(custIns?.validate()){
            custIns?.save()
        } 
        else{
            println "Errors***********"+custIns?.errors        
        }
        return custIns    
    }

    def saveCustomer1(custIns,password1){
        println "Before Save"
        custIns?.password=password1
        return  saveCustomer(custIns)
    }
}
