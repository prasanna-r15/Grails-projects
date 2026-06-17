package com.amphisoft.tourbooking


import grails.rest.*
import grails.converters.*

class TourPackageController {
    def tourBookingService
	static responseFormats = ['json', 'xml']
	
    def index() { }

    def saveCustomer(){
        def responseMap = [:]
        def requestJson = request.JSON
        def userName = requestJson?.name
        def userPhone = requestJson?.phone
        def userEmail = requestJson?.email
        def userAddress = requestJson?.address

        def userIns = new User(userName,userPhone,userEmail,userAddress);
        tourBookingService.saveUser(userIns)
        responseMap=["estatus":true,"emessage":"success"]
        respond responseMap
    }
    def obtainTourPackage(){
        def responseMap =[:]
        def packageList = TourPackage.list()
        def packageDate = []
        packageList?.each{ packageIns ->
            def packageMap=[:]
            packageMap = ["packageId":packageIns?.id,"splName":packageIns?.splName,"numOfDays":packageIns?.numOfDays,"placeName":packageIns?.placeName,"amount":packageIns?.amount,"imgTag":packageIns?.imageList[0]?.imgTag]                                      
            packageDate << packageMap
        }
        responseMap = ["estatus":true,"emessage":"success","date":[]]
        responseMap["data"]=packageData
        respond responseMap
    }
    def obtainTourDetails(){
        def responseMap =[:]
        def requestJson = request.JSON
        def packageList = TourPackage.get(requestJson?.packageId)
        def packageData = []
        packageList?.each{ packageIns ->
            def packageMap=[:]
            packageMap = ["packageId":packageIns?.id,"description":packageIns?.description,"hotelName":packageIns?.hotelName,"numOfCount":packageIns?.numOfCount,"amount":packageIns?.amount,"imgTag":packageIns?.imageList?.findAll{it?.id!=0}?.collect{it?.imgTag}]                                      
            packageDate << packageMap
        }
        responseMap = ["estatus":true,"emessage":"success","date":[]]
        responseMap["data"]=packageData
        respond responseMap    
    }
}
