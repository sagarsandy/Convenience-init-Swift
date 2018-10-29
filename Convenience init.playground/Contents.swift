import UIKit


// Convenience init: To initialize an object quickly, we use convenience init

// This is a normal class with initialization method
class Course {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// While creating object you have to pass name for this object
let swift = Course(name: "Swift 4")


// Convenience init

class Course1 {
    var name: String
    
    init(name : String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name : "Swift 4")
    }
}

// While creating the object, you don't need to pass the name for this object. It is optional

let objC = Course1()
print(objC.name)

// If you create course object just like above without passing name parameter, it will throw error asking the name parameter.

// However you can still pass the name parameter if you want

let swift5 = Course1(name: "Swift 5")






// Two phase init

class Distance {
    
    var kilometre : Double
    init(kilometre : Double) {
        self.kilometre = kilometre
        print("You've travelled \(kilometre) kilometers")
    }
    
    convenience init(miles : Double) {
        
        let kms = miles * 1.61
        
        self.init(kilometre: kms)
        
    }
    
}

let dist = Distance(miles: 5.10)
let dist2 = Distance(kilometre: 2)

// You can use either kms object or mile object








