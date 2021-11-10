import UIKit
import Foundation

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let amount = 500000.00
let ratePerAnnum = 0.01
var period = 5
var deposit = amount
for _ in 1...period{
   deposit = deposit + (deposit * ratePerAnnum)
    
}
var profit = deposit - amount
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
    
    
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var arrayOfInt: [Int] = [1,4,6,7,9,10]
var evenNumber = 0
for number in arrayOfInt{
    if number % 2 == 0{
        evenNumber += 1
    }
}
print("My even numbers are: \(evenNumber)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
var counter = 0
var randomNumber = 0
for _ in 1...999{
    randomNumber = Int.random(in: 1..<10)
    if randomNumber != 5{
        print("Number is \(randomNumber)")
        counter += 1
    }else{
        print("Number is \(randomNumber)")
        break
    }
}
print("Number 5 will be after \(counter) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var height = 0
var numberOfDays = 0
var numberOfNights = 0
while true{
    height += 2
    numberOfDays += 1
    print("Height after \(numberOfDays). day is \(height) m")
    
    if height < 10{
        height -= 1
        numberOfNights += 1
            print("Height after \(numberOfNights). night is \(height) m")
    }
    
    if height == 10{
        break
    }
}
print("bug will spend \(numberOfDays) days to reach top of the post")
