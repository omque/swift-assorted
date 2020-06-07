        //Omair Qazi - Module 2 - MAKR 202

import UIKit

//#1. Create a dictionary to track three people's top scores in a game they are playing. The people are Marta, Mark, and Marny. They have respective scores of 37, 29, and 33.
var myScores = ["Marta": "37", "Mark": "29", "Marny": "33"]

//2. Create an empty array called "groceryList"
var groceryList = [String]()

//3. Append some common food items to your list. You only need to do a few.
groceryList.append(contentsOf: ["Bread","Carrots","Eggs","Onions","Lettuce"])

//4. Create a function that takes your groceryList as an input. Have it loop through groceryList and create a new list with only items that DO NOT start with the letters "b" or "e". Have the function return this new list.

//Define function.
func goShopping() {
    //Define new grocery list with non "b" or "e" items.
    var otherGroceryList = [String]()
    
    //Loop over groceryList and check if item starts with "b" or "e" (case sensitive) with boolean expression.
    for item in groceryList{
        if item.starts(with: ["B"]) == false && item.starts(with: ["E"]) == false {
            //If it doesn't start with "b" or "e" append the other grocery list.
            otherGroceryList.append(item)
        }
    }
    //When finished, print out the other grocery list.
    print(otherGroceryList)

}

//Calling the function.
goShopping()
