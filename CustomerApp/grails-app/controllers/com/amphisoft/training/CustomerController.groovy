package com.amphisoft.training
import groovy.json.*;
import groovy.util.*;


public class CustomerController {

    def customerService,productService
    

    // def  testAction() {        
    //     String val = '<HTML><body>' + '<center>' +'<b>'+ 'User Details'+'</b>' + '<br>'+'<br>'+
    //             'Name           : Prasanna R'+'<br>'+'<br>'+
    //             'Age            : 20'+'<br>'+'<br>'+
    //             'Contact Number : 9655921566'+'<br>'+'<br>'+
    //             'Email-id       : prasannar.0505@gmail.com'+'<br>'+'<br>'+ new Date() +'</center>' + '</body></HTML>'
    //     render (text:val , contentType: 'text/html')      
    // }
    def login(){
        render(view:"loginPage",model:[error:""])
    }
    
    def loadCreateCustomerForms(){
        render(view:"create")
    }
    def loadProductForms(){
        def categoryList = Category.list()
        render(view:"purchaseForm",model : [id:params?.id,categoryList:categoryList ])
    }

    def addNewCustomer() {
        def cust = new Customer()
        def categoryList = Category.list()
        cust.name = params?.name
        cust.email = params?.email
        cust.phone=params?.phone
        cust.password=params?.password
        

        def adrs = new Address()
        adrs.address1=params?.address1
        adrs.address2=params?.address2
        adrs.state=params?.state
        adrs.pin=params?.pin?.toInteger()

        cust?.address = adrs
        adrs?.customer = cust
        cust = customerService.saveCustomer(cust)
        render (view:"purchaseForm" , model : [id:cust?.id,categoryList:categoryList])
    }
    // def addPurchase(){
    //     def customerIns = Customer.get(params?.custId.toLong())
    //     def prod = new Purchase()
    //     prod.product=params?.product
    //     prod.amount=params?.amount
    //     prod.brand=params?.brand
    //     prod.rating=params?.rating
    //     customerIns.addToPurchaseList(prod)
    //     customerService.saveCustomer(prod)
    //     redirect(action:"listOfCustomerHtml", controller:"customer")
    // }

    def addPurchase(){
        def customerIns = Customer.get(params?.custId.toLong())
        def prod = new Purchase()
        def productList = customerIns?.purchaseList
        prod.product=params?.product
        prod.amount=params?.amount
        prod.brand=params?.brand
        prod.rating=params?.rating
        customerIns.addToPurchaseList(prod)
        customerService.saveCustomer(prod)
        render(view:"listOfProduct",model :[customerIns:customerIns])
    }

    def listOfCustomerHtml(){
        def customerList = Customer.list()
        render(view:"list" ,model :[listINS:customerList])  
    }
    def listOfProductHtml(){
        def customerIns = Customer.get(params?.id?.toLong())
        def productList = customerIns?.purchaseList
        render(view:"listOfProduct",model :[customerIns:customerIns])
    }

    def listOfProducts(){
        render(view:"productForm")
    }
    def addProduct(){
        def categoryIns = Category.findByName(params?.cateId.toString())
        def prod = new Product()
        prod.imageTag=params?.imageTag
        prod.productName=params?.productName
        prod.disAmount=params?.disAmount
        prod.orgAmount=params?.orgAmount
        prod.discount=params?.discount
        prod.brandName=params?.brandName
        prod.ratingNum=params?.ratingNum

        categoryIns.addToProductList(prod)
        productService.saveProduct(prod)
        render(view:"productForm")
    }

    def userInfo(){
        def customerIns =Customer.findByEmail(params?.email.toString())
        def categoryList = Category.list()
        if(customerIns.email==params?.email && customerIns.password==params?.password){
            render(view:"purchaseForm", model:[id:customerIns?.id,categoryList:categoryList])
        }
        else{
            render(view:"loginPage",model:[error:"Incorrect Username and Password"])
        }

    }
    def emailV(){
        render(view:"emailgsp")
    }
    def verifyEmail(){
        def customerIns = Customer.findByEmail(params?.email1)

        if(customerIns?.email == params?.email1){
            render(view:"resetPass", model:[customerIns:customerIns])
        }
        else{
            render(view:"emailgsp",model:[error:"Please Check your E-mail ID"])
        }
        
    }

    def reset(){
        println "params____________________ in Resetting"+params
        def customerIns = Customer.get(params?.custId.toLong())  
        println "customerIns : ${customerIns?.id}"  
        println "oldpass---------"+customerIns?.password
        customerIns?.password=params?.password2
        println "newpass---------"+customerIns?.password
        customerService.saveCustomer(customerIns)
        // customerService.saveCustomer1(customerIns,params?.password2)
        render(view:"loginPage")

    }
    // def listOfCustomerXml(){
    //     def customerList = Customer.list()
    //     def userDetails ='<?xml version="1.0" encoding="UTF-8"?><details><user>'
    //     def end ='</user></details>'
    //     customerList.forEach{ obj ->
    //             userDetails+='<name>'+obj.name+'</name>'+'<email>'+obj.email+'</email>'+'<phone>'+obj.phone+'</phone>'
    //     }
    //     render userDetails + end
    // }


}
