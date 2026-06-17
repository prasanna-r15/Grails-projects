package com.amphisoft.tourbooking

class User implements Serializable{
    String name
	String email
	String phone
	String address  
	List bookingList
	static hasMany = [bookingList:TourBooking]
    

	public User(){}
    static constraints = {
    }
}
