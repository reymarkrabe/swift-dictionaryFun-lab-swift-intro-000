//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var personNames: [String] = []
        for (name, favoriteFlavor) in favoriteFlavorsOfIceCream {
            if favoriteFlavor == flavor {
               personNames.append(name)
            }
        }
        return personNames

    }
    
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) ->  Int {
        var counter = 0
        for favoriteFlavor in favoriteFlavorsOfIceCream.values {
            if favoriteFlavor == flavor {
                counter += 1
            }
        }
        
        return counter
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        if (favoriteFlavorsOfIceCream[person] == nil) {
            return nil
        }
        else {
            let personFlavor = favoriteFlavorsOfIceCream[person]
            return personFlavor
        }
    }
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if(favoriteFlavorsOfIceCream[person] == nil) {
            return false
        }
        else {
            if(favoriteFlavorsOfIceCream[person] == flavor){
                return false
            }
            else {
                favoriteFlavorsOfIceCream[person] = flavor
                return true
            }
        }
    }
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if (favoriteFlavorsOfIceCream[person] == nil) {
            return false
        }
        else {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
    }
    
    
    
    
    
    
    
    // 7.
    
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor flavor: String) ->  Bool {
        if (favoriteFlavorsOfIceCream[person] == nil) {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        else {
            return false
        }
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        var attendee: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        let count = allNames.count
        var countter = 1
        
        for name in allNames {
            let favFlavor = flavor(forPerson: name)!
            if(countter == count) {
                attendee += "\(name) likes \(favFlavor)"
                
            }
            else {
                attendee += "\(name) likes \(favFlavor)\n"
                countter += 1
            }
        }
        return attendee
    }
    
    
    

}


