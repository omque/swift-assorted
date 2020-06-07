//Omair Qazi - Module 5 - MAKR 202
import Foundation

//1. Create an optional integer variable and assign it a value.

var numberOfPuppies: Int? = 8

//2. Print the value of the optional from problem 1 by using if-let syntax.

if let actualPuppies = numberOfPuppies {
    print("There are \(actualPuppies) puppies.")
}

//3. Create a function that returns an optional. Perform a function call and use if-let syntax to unwrap that return value and print it (if it exists).

func getCatFood(numberOfCats: Int?) {
    if let actualCats = numberOfCats  {
        print("You'll need to feed \(actualCats) cats!")
    } else {
        print("No cats!")
    }
}

getCatFood(numberOfCats: nil)

//4. Create a function called “isCorrect” that takes in a boolean value. Use guard in the function to exit out if the boolean parameter if false, and to print “This is true” if the boolean value is true.

func isCorrect(answer: Bool) {
    guard answer else {
        return
    }
    print("This is true!")
}

isCorrect(answer: true)

//5. Create a function that takes in optional string parameters called “username” and “password”. Use a guard-let statement to unwrap both of these parameters and print them if they are both non-nil.

func accessGranted(username: String?, password: String?) {
    guard let access1 = username, let access2 = password else {
        return
    }
    print("Your Username: \(access1). Your Password: \(access2)")
}

accessGranted(username: "Tony Stark", password: "EDITH")
