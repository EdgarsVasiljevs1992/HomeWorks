import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var first: Float = 23.2
var second: Float = 51.7
//var sum: Double = Double(first) + Double(second)
var sum: Double = Double(second+first)
print(sum)


/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne = 9
var numberTwo = 6
let result = numberOne/numberTwo
let reminder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(reminder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

let qty = 9
var price = 1000

if qty < 5{
    price = 1000
}else if qty >= 5 && qty < 10{
    price = 900
}else if qty >= 10{
    price = 850
}
var totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge = "33a"
var convertToInt = Int(userInputAge)
if convertToInt != nil{
    print("This age can be converted to Int!")
}else {
    print("This age cannot be converted to Int!")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let yearOfBirth = 1992, monthOfBirth = 9, dayOfBirth = 8
let yearOfToday = 2021, monthOfToday = 11, dayOfToday = 10
let dayInMonth = 30.436875, monthInYear = 12

var totalYearsFromBirth: Int

if (monthOfToday > monthOfBirth) {
    totalYearsFromBirth = yearOfToday - yearOfBirth
}else if (monthOfToday >= monthOfBirth) && (dayOfToday >= dayOfBirth) {
    totalYearsFromBirth = yearOfToday - yearOfBirth
}else {
    totalYearsFromBirth = yearOfToday - yearOfBirth - 1
}

var totalMonthFromBirth: Int

if (dayOfToday >= dayOfBirth) && (monthOfToday >= monthOfBirth) {
    totalMonthFromBirth = (totalYearsFromBirth * monthInYear) + (monthOfToday - monthOfBirth)
}else if (monthOfToday > monthOfBirth) && (dayOfToday < dayOfBirth) {
    totalMonthFromBirth = (totalYearsFromBirth * monthInYear) + (monthOfToday - monthOfBirth) - 1
}else if (monthOfToday < monthOfBirth) && (dayOfToday >= dayOfBirth) {
    totalMonthFromBirth = (totalYearsFromBirth * monthInYear) + monthInYear + (monthOfToday - monthOfBirth)
}else {
    totalMonthFromBirth = (totalYearsFromBirth * monthInYear) + monthInYear + (monthOfToday - monthOfBirth) - 1
}

var totalDaysFromBirth: Double
if (dayOfToday < dayOfBirth) {
    totalDaysFromBirth = Double(totalMonthFromBirth) * dayInMonth + dayInMonth + Double(dayOfToday - dayOfBirth)
}else {
    totalDaysFromBirth = Double(totalMonthFromBirth) * dayInMonth + Double(dayOfToday - dayOfBirth)
}
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
var quarter = ""
switch monthOfBirth{
case 1...3:
    quarter = "first"
case 5...6:
    quarter = "second"
case 7...9:
    quarter = "third"
case 10...12:
    quarter = "fourth"
default:
    break
}
print("I was born in the \(quarter) quarter")

