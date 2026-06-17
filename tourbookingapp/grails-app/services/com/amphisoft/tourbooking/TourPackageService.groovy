package com.amphisoft.tourbooking

import grails.gorm.transactions.Transactional

@Transactional
class TourPackageService {
    def saveUser(userIns){
        if(userIns.validate()){
            userIns.save()
        }
        else{
            println "errors..."+userIns.errors
        }
    }

    def serviceMethod() {

    }
}
