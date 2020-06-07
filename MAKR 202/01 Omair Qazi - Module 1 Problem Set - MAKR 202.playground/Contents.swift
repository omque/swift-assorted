//Omair Qazi - MAKR 202
//Project Objective: Try each of the exercises below in a Swift Playground or an online compiler. If the problem asks for an explanation, put that in your code as a comment. You can submit this assignment as a .swift file or by copy and pasting your entire code into the textbox. Each problem is worth 5 points.
//Remarks: I decided to finish this assignment even though it is for MAKR 201 just to practice Swift syntax.

import UIKit

//#1. Create a variable named “myName” that has a value of whatever your name is. Print this variable to the console.
var myName = "Omair"
print(myName)

//#2. Run the following code: “1” + “1”. What is the result? Explain why.
"1"+"1"
//Result: The result is "11" because "1" is being type inferred as a string, so the + operator concatenates them together to give us "11".

//#3. Create a variable that stores an integer value. Create another variable that stores a string. Print both values to the console.
var myInteger = 42
var myString = "Live long and prosper"

//#4. Take both of the variables from problem 3 and put them into an array. What is the error message that you get? Explain.
let myArray = [myInteger, myString]
//Result: In Swift, arrays must have the same type otherwise the compiler will not allow the program to run. In this we are attempting to add an integer variable and a string variable together.

//#5. Create an array of three items that are on your shopping list. Print the last item to the console. (Hint: each item needs to be a string)
let myGroceryList = ["Ground beef", "Carrots", "Celery"]
print(myGroceryList[2])

//#6. Create a constant. Now try to give it a different value. What is the error that it gives you?
let myConstant = 201
let myConstant = 202
//Result: myConstant produces an "invalid redeclaration" error because redeclaring a variable in the same scope is not valid in Swift. (This is a fussy language).

//#7. Create a variable named doubleExample with the value of 4.5. Create another variable named intExample and give it a value of 3. Using the variable names, add these two values together (doubleExample + intExample). What happens? Give an explanation.
var doubleExample = 4.5
var intExample = 3
doubleExample+intExample
//Result: A "binary operator '+' cannot be applied to operands of type 'Double' and 'Int'" error resulted because Swift doesn't allow for different types to be added together because it would lose the precision of the double. I would need to convert one of the types to the other.
