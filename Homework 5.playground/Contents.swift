import UIKit

/*
Exercise 1
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Figure{
    var height: Float
    var width: Float
    var radius: Float
    var square: Float
    var perimeter: Float
    
    init(heightA: Float, widthA: Float){
        self.height = heightA
        self.width = widthA
        self.square = 0
        self.perimeter = 0
        self.radius = 0
    }
    func squareOfFigure() -> Float { return square }
    func perimeterOfFigure() -> Float { return perimeter }
}

class Rectangle: Figure{
    override func squareOfFigure() -> Float {
        square = height * width
        return square }
    override func perimeterOfFigure() -> Float {
        perimeter = height + height + width + width
        return perimeter }
    func description(){
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}
let myRectangle = Rectangle(heightA: 5, widthA: 4)
myRectangle.description()

/*
 Exercise 2
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result

Declare two numbers.
Call func 4 times for all calculateResult
*/
enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

func calculateResult(firstNumber numberOne: Int, secondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) ->Int {
        var result = numberOne
           
    switch calculationType {
    case .addition: result += numberTwo
    case .substraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    case .division: result /= numberTwo
    }

    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    
    return result
}

calculateResult(firstNumber: 10, secondNumber: 5, withCalculationType: .addition)
calculateResult(firstNumber: 4, secondNumber: 3, withCalculationType: .substraction)
calculateResult(firstNumber: 5, secondNumber: 4, withCalculationType: .multiplication)
calculateResult(firstNumber: 25, secondNumber: 5, withCalculationType: .division)

/*
Exercise 3

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

Create func getSpecs() print it with elements provided above
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */

struct Car{
   var name: String
   var productionYear: Int
   var horsePower: Int
    
    func getSpecs(){
        print(" model: \(name), produced in: \(productionYear), hp: \(horsePower)!")
    }
}

let bmw3series = Car(name: "BMW 325", productionYear: 1993, horsePower: 192)
var bmw5series = bmw3series
bmw5series.name = "BMW 525"

bmw3series.getSpecs()
bmw5series.getSpecs()

