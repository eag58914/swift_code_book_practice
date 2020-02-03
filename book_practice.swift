// this is a playground
import UIKit

var str = "Hello, playground"
let intArray = [1,2,3,4,5]
let explicitIntArray :[Int] = [1,2,3,4,5]
intArray[3]
var mutableArray = [1,2,3,4,5]
mutableArray.append(6)
mutableArray.remove(at : 2)
mutableArray[0] = 3
mutableArray.insert(3, at:2)


//Tuples
let fileNotFound = (404,"File Not Found")
fileNotFound.0
let serverError = (code:500, message:"Internal Server Error")
serverError.message

//Dictionaries

var crew = ["Captain": "Benjamin Sisko","First Officer":"Kira Nerys","Constable":"Odo"]
crew["Captain"]
crew["Doctor"] = "Julian Bashir"
crew["Security Officer"] = "Michael Eddington"
crew.removeValue(forKey: "Security Officer")

let arrayDictionary = [0:1,1:2,2:3,3:4,4:5]
arrayDictionary[0]

//control flow

if 1+2 == 3 {
    print("the math checks out")
}
let ifVariable = 5

if ifVariable == 1{
    print("its done")
}
else if ifVariable <= 3 {
    print("it is less than or equal to three")
}
else if ifVariable == 4 {
    print("it is four")
}
else {
    print("it is something else")
}

let loopArray = [1,2,3,4,5,6,7,8,9,10]
 var sum = 0
for number in loopArray {
    sum += number
}
sum

sum = 0
for number in 1 ..< 10{
    sum += number
}

sum = 0
for number in 1 ... 10{
    sum += number
}
sum

//stride

var strideSum : Double = 0
for number in stride(from :0, to: 1, by: 0.1){
    strideSum += number
}
strideSum

strideSum = 0
for number in stride(from:0, through:1,by: 0.1){
    strideSum += number
}
strideSum
//while loops

var countDown = 5
while countDown > 0{
    countDown -= 1
}
countDown

let intergerSwitch = 3
switch intergerSwitch {
case 0:
    print("It's 0")
case 1:
    print("It's 1")
case 2:
    print("It's 2")
default:
    print("It's something else")
}

//case statements
let fallthroughSwitch = 10
switch fallthroughSwitch{
case 0..<20:
    print("Number is between 0 and 20")
    fallthrough
case 0..<30:
    print("Number is between 0 and 30")
default:
    print("Number is something else")
}

let emptyString = ""
let anotherString = String()

var composingString = "Hello"
composingString += " world"

for character in "hello"
{
    print(character)
}

composingString.count
"cafe".uppercased()
let string1 : String = "Hello"
let string2 : String = "Hel" + "lo"
if string1 == string2 {
    print("The strings are equal")
}

var setOfString = Set<String>()
var fruitSet : Set = ["apple","orange","banana","orange"]
fruitSet.count

if fruitSet.isEmpty{
    print("My set is empty")
}

fruitSet.insert("pear")
fruitSet.remove("apple")

for fruit in fruitSet {
    let fruitPlural = fruit + "s"
    print("You know what's tasty \(fruitPlural.uppercased()).")
}

//enumerations

enum FutureIpad{
    case iPadSuper
    case iPadTotallyPro
    case iPadLudicrous
}

var nextiPad = FutureIpad.iPadTotallyPro

nextiPad = .iPadSuper

enum BasicWeapon{
    case laser
    case missile
}
enum AdvancedWeapon{
    case laser(powrLevel: Int)
    case missiles(range:Int)
}
let spaceLaser = AdvancedWeapon.laser(powrLevel: 5)

enum Response : String {
    case hello = "hi"
    case goodbye = "Seee you next time "
    case thankYou = "No worries"
}

let hello = Response.hello

hello.rawValue


enum Nuclose : String {
    case cytosine, gaunine, adenine, thymine
}
Nuclose.adenine.rawValue

enum Element : Int{
    case hydrogen = 1, helium, litthium, beryllium, boron, carbon, nitrogen
}
Element.litthium.rawValue

let number = Int("lorem Ipsum")

//Optional interger, allowed to be nill
var anOptionalInterger : Int? = nil
anOptionalInterger = 42

if anOptionalInterger != nil {
    print("it has a value")
}else{
    print("it has no value")
}

anOptionalInterger = 2
 1 + anOptionalInterger!

//if-let statment to check if an optional variable has a value

var conditionalString : String? = "a string"
if let theString = conditionalString {
    print("The string is '\(theString)'")
}


//typecasting section

let person : [String:Any] = ["name":"Jane","Age":26,"Wears glasses":true]

let possibleString = person["name"]
if possibleString is String {
    print("\(possibleString!) is a string!")
}

if let name = person["name"]{
    var maybeString = name as? String
    
    var maybeint = name as? Int
}

//functions in Swift

func usefulNumber() -> Int{
    return 123
}

let anUsefulNumber = usefulNumber()

func addNumbers(firstValue: Int, secondValue:Int) ->Int{
    return firstValue + secondValue
}

let result = addNumbers(firstValue: 1, secondValue: 2)

//returning in tuples

func processNumbers(firstValue:Int, secondValue: Int)->(doubled:Int, quadrupled: Int){
    return (firstValue * 2, secondValue * 4)
}

processNumbers(firstValue: 2, secondValue: 4).1

//you dont always need to have labels for your parameters

func subtractNumbers(_ num1: Int, _ num2: Int)-> Int{
    return num1 - num2
}

func add(firstNumber num1 :Int, toSecondNumber num2: Int)->Int{
    return num1 + num2
}

add(firstNumber: 2, toSecondNumber: 3)

func multiplyNumbers2(firstNUmber : Int, multiplier: Int = 2)->Int{
    return firstNUmber * multiplier;
}

multiplyNumbers2(firstNUmber: 2)

// using a parameter wiht a variable number of parameters

func sumNumbers(numbers:Int...)-> Int{
    //in this function, 'numbers' is an array of Ints
    var total = 0
    for number in numbers{
        total += number
    }
    return total
}
sumNumbers(numbers: 1,2,3,4,5,6,7,8,9,10)
//usin inout in parameters to swap variables on their value

func swapValues(firstValue: inout Int, secondValue: inout Int){
    (firstValue, secondValue) = (secondValue,firstValue)
}
var swap1 = 2
var swap2 = 3

swapValues(firstValue: &swap1, secondValue: &swap2)
swap1
swap2

//using variables as functions

var numbersFunc:(Int,Int)-> Int
numbersFunc = addNumbers
numbersFunc(2,3)

func timesThree(number: Int)->Int{
    return number * 3
}

func doSomethingTo(aNumber: Int, thingToDo: (Int)->Int)-> Int {
    return thingToDo(aNumber)
}

doSomethingTo(aNumber: 4, thingToDo: timesThree)

//function can also capture a value and use it multiple times

func createIncrementor(incrementAmount: Int)->()->Int{//1
    var amount = 0 //2
    func incrementor()->Int{//3
        amount += incrementAmount//4
        return amount
    }
    return incrementor//5
}

//closures

let jumbledArray = [2,5,98,2,13]
jumbledArray.sorted()
let numbers = [2,1,56,32,120,13]
var numbersSorted = numbers.sorted(by:{(n1: Int, n2:Int)-> Bool in return n2 > n1})

func doSomeWork(){
    print("Getting Started!")
    defer{
        print("All done")
    }
    print("getting to work")
}
doSomeWork()

func doAThing(){
    guard 2+3 ==  4 else{
        print("The universe makes no sense")
        return
    }
    print("We can continue with out daily lives")
}
doAThing()


//Part 2 Creating Classes

class InitAndDeinitExample {
    //Designated  initialzer
    init(){
        print("I've been created!")
    }
    convenience init(text:String){
        self.init()
        print("I was called with the convenience initializer!")
    }
    //Deinitialzer
    deinit {
        print("I am going away")
    }
}

var example: InitAndDeinitExample?
example = InitAndDeinitExample()
example = nil
example = InitAndDeinitExample(text: "Hello")
class Counter  {
    var number: Int = 0
}
let myCounter = Counter()
myCounter.number = 2

class BiggerCounter {
    var number : Int
    var optionalNumber : Int?
    
    init(value: Int){
        number = value
        
    }
}

var anotherCounter = BiggerCounter(value: 3)

anotherCounter.number

class Rectangle {
    var width: Double = 0.0
    var height: Double = 0.0
    
    var area : Double {
        get {
            return width * height
        }
        set {
            width = sqrt(newValue)
            height = sqrt(newValue)
            
            
        }
        
    }
}

let rect  = Rectangle()
rect.width = 3.0
rect.height = 4.5
rect.area

class PropertyObserverExample {
    var number : Int = 0 {
        willSet(newNumber){
            print("About to change to \(newNumber)")
        }
        didSet(oldNumber){
            print("Judst changed from \(oldNumber) to \(self.number)!")
        }
    }
}

var observer = PropertyObserverExample()
observer.number = 4

protocol Blinkable {
    var isBlinking : Bool {get}
    var blinkSpeed: Double {get set}
    func startBlinking(BlinkSpeed: Double) -> Void
}

class TrafficLight : Blinkable{
    var isBlinking: Bool = false
    var blinkSpeed: Double = 0
    
    func startBlinking(BlinkSpeed: Double) {
        print("I am a light and I am blinking")
    
    isBlinking = true
    self.blinkSpeed = BlinkSpeed
}
}

class Lighthouse : Blinkable {
    var isBlinking: Bool = false
    var blinkSpeed: Double = 0.0
    
    func startBlinking(BlinkSpeed: Double) {
        print("I am a lighthouse and I am now blinking")
        isBlinking = true
        self.blinkSpeed = BlinkSpeed
    }
}
var aBlinkingThing : Blinkable
aBlinkingThing = TrafficLight()
aBlinkingThing.startBlinking(BlinkSpeed: 4.0)
aBlinkingThing.blinkSpeed

aBlinkingThing = Lighthouse()


extension Int {
    var double : Int {
        return self * 2
    }
    func multiplyWith(anotherNumber : Int)-> Int {
        return self * anotherNumber
    }
}
2.double
2.multiplyWith(anotherNumber: 5)

extension Int : Blinkable {
    var isBlinking: Bool{
        return false;
    }
    var blinkSpeed : Double {
        get{
            return 0.0
        }
        set{
            
        }
    }
    func startBlinking(BlinkSpeed: Double) {
        print("I am the interger \(self). I do not blink")
    }
}
