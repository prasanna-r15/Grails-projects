package com.amphisoft.training;

public class ProductService{
    def saveProduct(cateIns){
        if(cateIns?.validate()){
            cateIns?.save()
        } 
        else{
            println "Errors***********"+cateIns?.errors        
        }   
    }
}