import UIKit

//Omair Qazi - MAKR 202
//Problem Set 2
//**********************************************************************************************************//

//Question 1: You want to make a raised garden bed, but you only have enough mulch to cover 30 square feet. You need to know the possible dimensions that you could make this garden bed so that it doesn’t have an area greater than 30 sq. feet. Assign possible side lengths to two different variables and then use an if statement to test the area of the garden bed (remember that area is just the side lengths multiplied by each other). If the area is less than or equal to 30, print “These side lengths work”. Otherwise, print “The area is too big”.


//Length and Height are set to variables.
var sideLength = 4
var sideHeight = 7

//Calculating area of garden.
var areaOfGarden = sideHeight * sideLength

//Check to see if the area is less than 30.
if areaOfGarden < 30 {
    print("These side lengths work")
}
else {
    print("The area is too big.")
}

//**********************************************************************************************************//
//Question 2: Assign an integer to a variable. Write an if-then statement that tests to see if the integer is between 20 and 50. Print “Within bounds” if it is, and “Out of bounds” if it isn’t.

//Assign an integer to a variable.
var integer = 20

//Check if integer is between 20 and 50.
if integer >= 20 && integer <= 50 {
    print("Within bounds.")
}
else {
    print("Out of bounds.")
}

//**********************************************************************************************************//
//Question 3: Use a for loop to add all of the numbers between 21 and 59. Print the result.

//Create variable for sum to iterate on. Because I am using a range, I don't need to define a variable for the range fotherwise I will run into a Swift type error.
var total = 0

//Create for loop with local variable.
for number in 21...59 {
    total = total + number
}

print(total)

//**********************************************************************************************************//
//Question 4: Create a for loop that loops over an array of names. If the name starts with an “a” or a “j”, add it to another array called “ajNames”. Print the ajNames array when finished. Use the following array of names: [“alex”, “brad”, “jody”, “sara”, “juan”, “mia”, “andrey”, “michelle”, “sasha”]

//Define input and output arrays. To initialize empty array use intializer syntax from Swift 5 docs.
var myArray = ["alex", "brad", "jody", "sara", "juan", "mia", "andrey", "michelle", "sasha"]
var ajNames = [String]()

//Check if name starts with letter "a" or "b". using .starts(with:[]) method.
for name in myArray {
    if name.starts(with: ["a"]) {
        //Append ajNames array with name.
        ajNames.append(name)
    }
    else if name.starts(with: ["j"]) {
        ajNames.append(name)
    }
}

print(ajNames)

//**********************************************************************************************************//
//Question 5: Use a loop to add all of the letters in this array into one string. Print the result. [“co”, “nc”, “at”, “en”, “at”, “ion”]
//Declare array of words to join and empty array to place joined words.
var arrayToJoin = ["co", "nc", "at", "en", "at", "ion"]
var concat1 = [String]()

//Loop to place items into one array
for part in arrayToJoin {
    concat1.append(part)
}

//Convert first array to a string by joining all elements into a string to spell the word.
let concat2 = concat1.joined()

//Print both arrays.
print(concat1)
print(concat2)
