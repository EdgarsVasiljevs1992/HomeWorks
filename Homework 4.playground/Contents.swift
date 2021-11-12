import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam = "Girls"
var resultsOfGames = [
    "Los Angeles Lakers" : ["99:89", "109:99"],
    "Chicago Bulls" : ["87:93", "104:97"],
    "New York Knicks" : ["117:112", "107:122"]
]

for (teamName, results) in resultsOfGames{
    for result in results{
        print("\(myTeam) against \(teamName) scored - \(result)")
    }
}

//for (teamName, results) in resultsOfGames{
//print("\(myTeam) against \(teamName) scored - \(results[0])")
//print("\(myTeam) against \(teamName) scored - \(results[1])")
//}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

func cash(_ bills: Int...) -> Int{
    var total = 0
    for i in bills {
        total += i
    }
    return total
}

cash(5, 10, 20, 50 ,100, 200, 500)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(_ number: Int) ->Bool {
     number % 2 == 0
}

isEvenNumber(4)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int]{
    var arrayOfInt: [Int] = []
    for i in from...to{
        arrayOfInt.append(i) // same as below
        //arrayOfInt += [i]
    }
    //print(arrayOfInt)
    return arrayOfInt
}
var myArray = createArray(from: 1, to: 100)
print(myArray)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for number in myArray {
    if isEvenNumber(number) {
        let indexOfNumber = myArray.firstIndex(of: number)!
        myArray.remove(at: indexOfNumber)
    }
}
print("Array without even numbers: \(myArray)")

////2nd var
//array.removeAll(where: { isEvenNumber($0) })
//print(array)
////3rd var
//let arr = array.filter( {$0 % 2 != 0} )
//print(arr)
