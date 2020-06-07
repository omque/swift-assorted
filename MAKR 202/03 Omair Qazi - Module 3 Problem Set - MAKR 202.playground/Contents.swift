//Omair Qazi - Module 3 - MAKR 202
//Problem Set: For each of the problems, you are given a situation that would be fitting to use a struct or a class. Use structs or a classes (Your choice. You can also use multiple of each or a mix of both types.) to represent a solution to each situation. Create the necessary instances of your classes and structs.

import UIKit

//1. You are making a video game in which the play gets to choose from three types of characters. The characters all have the same amount of health and movement functionality, but they each have unique abilities as well.

//Defining a class for the Player to be inheritied by specific types of characters (Wizard, Soldier, Rogue).
class PlayerTemplate {
    var name: String
    var maxHealth: Int
    var startDexterity: Int
    var startIntelligence: Int
    var startDefense: Int
    
    init(name: String, maxHealth: Int, startDexterity: Int, startIntelligence: Int, startDefense: Int) {
        self.name = name
        self.maxHealth = maxHealth
        self.startDexterity = startDexterity
        self.startIntelligence = startIntelligence
        self.startDefense = startDefense
    }
    
}

//Wizard Class - Adds a maxMagic attribute.
class Wizard : PlayerTemplate {
    var maxMagic: Int
    
    init(maxMagic: Int, name: String, maxHealth: Int, startDexterity: Int, startIntelligence: Int, startDefense: Int){
        self.maxMagic = maxMagic
        super.init(name: name, maxHealth: maxHealth, startDexterity: startDexterity, startIntelligence: startIntelligence, startDefense: startDefense)
        }
    }
    
//Soldier Class - Adds a maxConstitution attribute.
class Soldier : PlayerTemplate {
    var maxConstitution: Int
    
    init(maxConstitution: Int, name: String, maxHealth: Int, startDexterity: Int, startIntelligence: Int, startDefense: Int){
        self.maxConstitution = maxConstitution
        super.init(name: name, maxHealth: maxHealth, startDexterity: startDexterity, startIntelligence: startIntelligence, startDefense: startDefense)
        }
    }

//Rogue Class - Adds a maxLuck attribute.
class Rogue : PlayerTemplate {
    var maxLuck: Int
    
    init(maxLuck: Int, name: String, maxHealth: Int, startDexterity: Int, startIntelligence: Int, startDefense: Int){
        self.maxLuck = maxLuck
        super.init(name: name, maxHealth: maxHealth, startDexterity: startDexterity, startIntelligence: startIntelligence, startDefense: startDefense)
        }
    }

//Instantiating Basic Player Character from Player Template Class
var startCharacter = PlayerTemplate(name: "Frodo", maxHealth: 100, startDexterity: 50, startIntelligence: 70, startDefense: 50)
startCharacter.name

//Instantiating Wizard Character
var wizardCharacter = Wizard(maxMagic: 200, name: "Gandalf", maxHealth: 100, startDexterity: 80, startIntelligence: 200, startDefense: 70)
wizardCharacter.name

//Instantiating Soldier Character
var soldierCharacter = Soldier(maxConstitution: 200, name: "Aragorn", maxHealth: 150, startDexterity: 100, startIntelligence: 100, startDefense: 150)
soldierCharacter.name

//Instantiating Rogue Character
var rogueCharacter = Rogue(maxLuck: 200, name: "Tom Bombadil", maxHealth: 100, startDexterity: 130, startIntelligence: 150, startDefense: 200)
rogueCharacter.name

// End of Problem 1.

//2. You are making an app that draws squares on the screen. Each square has a side length and an area. It will also have coordinates to represent its position on the screen.

struct SquareTemplate {
    //Square Length Parameters
    var length: Int
    var height: Int
    
    //Square Coordinates
    var xCoordinate: Double
    var yCoordinate: Double


    //Computed Property: Area of Square
    var areaOfSquare: Int {
        let area = length * height
        return area
    }
    
}

//Instantiating Square
var mySquare = SquareTemplate(length: 10, height: 10, xCoordinate: 5, yCoordinate: 5)
//Computing value of area.
mySquare.areaOfSquare

// End of Problem 2.

// 3. You are creating a "Pay it Forward" app where you get to give a gift to another user of the app. Each user has a name, email, and address. There needs to be some functionality to log when a user sends a gift to another user. This function should print something similar to "John sent a gift to Jane", where John is a user and Jane is a user.

struct basicUser {
    var sender: String
    var email: String
    var Address: String
    var recipient: String? //Uses an optional in the event that a recipient isn't specified at instantiation.
    
    //
    mutating func sendGift(newRecipient: String){
        recipient = newRecipient
        print("\(sender) sent a gift to \(recipient!)")
    
    }
    
}

//Creates User John but does not specify a Recipient.
var John = basicUser(sender: "John", email: "john@aol.com", Address: "123 Easy Street", recipient: nil)

//Specifies recipient with argument.
John.sendGift(newRecipient: "Jane")
