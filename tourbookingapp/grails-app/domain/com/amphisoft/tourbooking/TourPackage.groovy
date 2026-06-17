package com.amphisoft.tourbooking

class TourPackage implements Serializable{
    String splName
    String placeName
	String description
    String hotelName
	String numOfDays
    String smallDes
	Integer amount
    Integer numOfCount
    List imageList

    static hasMany = [imageList:ImageTag]

    public TourPackage(){}
    static constraints = {
    }
}
