//: Playground - noun: a place where people can play

import UIKit



//******************//******************//******************//******************//******************
//                        ONLY WORKS WITH THE UPDATED SWIFT AND XCODE VERSION
//******************//******************//******************//******************//******************

/*
 There is a (3) step process when dealing with NSURLSession
 of course you have to added dispatch for threading
 */

let config = URLSessionConfiguration.default

let session = URLSession(configuration: config)

let url: URL = URL(string: "https://www.examplesite.com/")!

//async
let task = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
    //
    print(response!)
}
task.resume()

func sendMessage(_ message: String, to recipent: String, shouting: Bool) {
    
    var message = "\(message), \(recipent)"
    
    if shouting {
        message = message.uppercased()
    }
    
    print(message)
}

sendMessage("This is the message", to: "Deejay", shouting: true)


struct Rectangle {
    var width: Int?
    var height: Int?
    init() {
        super.init(width: width, height: height)
    }
    var area = Int {
        return width * height
    }
}

////////////////////////////////////////////////////////////////////////////////////////////


var str = "Hello, playground"

let animals = ["dog", "cat", "bird"]

let animal = animals[2]

for animal in animals {
    print ("\(animal)")
}

var dic = [String:Int] ()
dic = ["chris":2,"leroy":4]

var a: Array = ["hdhf","spak"]
a.insert("cccw", at: 1)

var b = [Int]()
var c = [String:String]()
var e = "jdjoqj"

var d: Int = 10

for (key,value) in dic {
    print("\(key) = \(value)")
}

let image = UIImage(named:"")

print("Stacktrace = \([Thread.callStackSymbols]) ")

let width = 17
let name = "John"

let widthLabel = name + String(width)

let apples = 2
let oranges = 5
let fruit = oranges + apples
print("I have \(apples + oranges) fruits.")

var occupation = [
    "Speaker" : "John",
    "Annoucesr" : "Jacklin"
]

occupation["Owner"] = "Chantel"

let emp = [String]()
let sauce = [String : Float]()

let score = 1...10
var teamscore = 0
for grade in score {
    
    if grade > 4 {
        teamscore += 3
    } else {
        teamscore += 1
    }
}

var optionalname : String? = "Case"
print(optionalname == nil)

var optionalsong :String? = "Song" //Changing this to nil prints "none"
var hello = "here and there"
if let name = optionalsong {
    hello = name
} else if optionalsong == nil{
    print("none")
}

let information : String? = nil
let documents : String = "NSA committed this crime"

print(information ?? documents) // This way is cheap
let criminals = (information ?? documents)


let interestingNumber = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    "Fibonacci" : [1, 1, 2, 3, 5, 8],
    "Square" : [1, 2, 9, 16, 25],
]

var largest = 0

for (key, numbers) in interestingNumber {
    for number in numbers {
        if number > largest {
            largest = number
            
        }
    }

}
print(largest)

var n = 2

while n < 100 {
    n = n * 2
}
print(n)

var m = 0
for i in 0..<4 {
    m += i
}

print(m)


// Blocks is what its called in Objective-C with

func closure (name :String, move: String) -> String {
    return ("Name:\(name) move: \(move)")
}

closure(name: "john", move: "left")
// Tuples

func cal (scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < max {
            min = score

        }
        sum += score
    }
    return (min, max, sum)

}
let statisic = cal(scores: [5, 3, 100, 3, 9])
print(statisic.max)
print(statisic.2)

func somenumber (numbers: Int...) -> Int {
    
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    return sum
}

somenumber()
somenumber(numbers: 6, 68, 92)

// Functions within functions is new to me

func returnfifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnfifteen()

func makeIncrements()-> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrements()
increment(4)

func hasAnyMatches (list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
    
}

var number = [20, 19, 7, 12]
hasAnyMatches(list: number, condition: lessThanTen)

number.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = number.map({number in 3 * number})
print(mappedNumbers)

//let newMappedNumber = number.sort { $0  }
//print(newMappedNumber)

let somenumber = number.map ({number in number})
print(somenumber)

let label: [UILabel]
var labelTypes = ["some","jack","many"]

let mappedLabels = labelTypes.map({ label in label })
print(mappedLabels)


func == (name: String, age: Int) {
    if (name.characters.count >= 10) && (age >= 55) {
        print("name is long and you are too old")
    } else if (name.characters.count >= 5) {
        print("name is short")
    }
}

var splitString = "this sting is suppose to be split"
var seperatedString = splitString.components(separatedBy: " ")
let reverseString = seperatedString.reversed()
var reverse = seperatedString.sorted()
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = seperatedString.sorted(by: backward)
print(reversedNames)
var ten = 10
var dropNumber = seperatedString.dropFirst()
var dropLast = dropNumber.dropLast()
dropNumber.append("s")

struct Place {
    let name : String
    let zip : Int
}

let five = 5
let thisInt = Int.addWithOverflow(72345677333333, 82662661111)
let placeString = Place.init(name: "Samara", zip: 3)

let string = splitString.components(separatedBy: " ")

//var fakeCompletion: [(),()] = []

let numbers = [3, 5, 7]

for number in numbers.reversed() {
    print(number)
}

// MAP
let prices = [100,244,566,7,80,888]
let price = prices.map{("$\($0)")}
let pricee = prices.map{($0 * $0)}

// Fliter
let nu = 99384
let so = String(nu)
let cost = [34532,45667,8,8,9,9,0,76545,45]
let even = cost.filter{($0 > $0)}
let costs = cost.sorted()

//var reversedNames = names.sorted(by: backward)

let string = "This is a string"

var variable = 3

var userIsInMethod: Bool = false

func apple(pressed: UIButton) {
    let home = pressed.currentTitle!
    print("home = \(home)")
}

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var airspeed: Double { get }
}

struct FlappyBird: Bird, Flyable {
    internal var name: String
    internal var name: String?
    internal var airspeed: Double
    internal var flappyAmplitude: Double
    internal var flappy: Double
    
    init(name: String, airspeed: Double, amplitude: Double, flappy: Double) {
        self.name = name
        self.airspeed = airspeed
        self.flappyAmplitude = amplitude
        self.flappy = flappy
    }
    
    var airspeedVelocity: Double {
        return 3 * flappy * flappyAmplitude
    }
}

struct Penguin: Bird {
    internal var canFly: Bool
    var name: String
    var canfly = false
}

struct SwiftBird: Bird, Flyable {
    internal var airspeed: Double
    
    var name: String { return "Swift \(version)" }
    let version: Double
    
    var airspeedVelocity: Double {
        return 2000.0
    }
}

extension Bird where Self: Flyable {
    var canFly: Bool {
        return true
    }
}

enum UnladenSwallow: FlappyBird, Bird {
    internal var canFly: Bool
    
    case African
    case European
    case Unknown
    
    var name: String {
        switch self {
        case .African:
            return "African"
        case .European:
            return "European"
        case .Unknown:
            return "Unknown"
        }
    }
    var airspeedVelocity: Double {
        switch self {
        case .African:
            return 10.0
        case .European:
            return 9.9
        case .Unknown:
            fatalError ("Something")
        }
    }
}

extension Collection {
    func skip(skip: Int) -> [Generator.Element] {
        guard skip != 0 else { return [] }
        
        var index = self.startIndex
        var result = [Generator.Element] = []
        
        var i = 0
        
        repeat {
            if i % skip == 0 {
                result.append(self[index])
            }
            index = index.successor()
            i += 1
        } while (index != self.endIndex)
        return result
    }
}

let bunchBirds: [Bird] =
    [UnladenSwallow.African, UnladenSwallow.European, UnladenSwallow.Unknown,
     Penguin(Penguin: "King Penguin"),
     SwiftBird(version: 2.0),
     FlappyBird (name: "Felipe", flappyAmplitude: 3.0, flappy: 20.0)]

bunchBirds.skip(skip: 3)

// Start off with a protocol instead of a class

var string = "This is a string"

visualize()


struct Cow {
    let name: String
    let date: Int
    let from: String
}

extension [String] {
    Cow = [
    cow(name: "Bitch eat chicken", date: 0, from: "good")
    cow(name: "chicken heads", date: 20, from: "chris")
    cow(name: "blaze", date: 2, from: "diamond")]
}

var groceries = [String] ()
groceries.append(apple)
groceries.append(bananas)
groceries.append(oranges)

print("Num of groceries \(groceries.count)")

groceries.insert("Flour", at: 1)
print(groceries)

let people: Array<String> = ["ann","zach","amy","sam"]

for person in people {
    print(person)
    
}

let bear = "rowr"

var str = "Hello, playground"
var someInts = [Int]()
var shoppingList = ["stuff","some"]
var someSet : Set = ["piglets", "chickens"]
var otherSet : Set = [1, 2, 3, 4, 5, 6, 7, 8]
var thisSet : Set = [0, 9]


class MediaItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let middleName: String?
    let peeps: Dictionary<String,Int>
    
    var displayName: String {
        if middleName != nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

struct Color {
    let red, blue, green: Double
    init(red: Double, blue: Double, green: Double) {
        self.red = red
        self.blue = blue
        self.green = green
    }
    init(white: Double) {
        self.blue = white
        self.green = white
        self.red = white
    }
}
var color = Color()


let me = Person(firstName: "Court", lastName: "sam", middleName: nil, peeps: ["brother": 1])
otherSet.union(thisSet).sorted()


print("Empty ints \(someInts)")

for items in shoppingList {
    print(items)
}

let library = [
    Movie(name: "John go to space", director: "Steve"),
    Movie(name: "Car drives", director: "ME"),
    Song (name: "riding", artist: "Blue"),
    Song(name: "money", artist: "Sheen")
]

var songCount = 0
var movieCount = 0

let magneta = color(red: 200.0, blue: 36.0, green: 32.0)
let white = color(white: 0.1)



func myFunction(lastName: String, name: String) {
    print("\(lastName)")
}

myFunction(lastName: "summy", name: "package")
myFunction(lastName: "jack", name: "john")
myFunction(lastName: "sonny", name: "ciara")

func someFunction(name: String = "Jack") {
    print("\(name)")
}

someFunction(name: "Sunny")

func add(a: Int = 6, b: Int = 7) {
    print("\(a * b) ")
}
print(add(a: 9))
add(a: 9)
add(b: 5)
print("\(add(b: 5))")

var str = "Hello, playground"

class Vehicle {
    
    var color : String
    var wheels : Int
    var seats : Int
    
    init (color: String, wheels: Int, seats: Int) {
        
        self.color = color
        self.wheels = wheels
        self.seats = seats
        
    }
}

class SinglePersonBike: Vehicle {
    
    var bikeColor = "red"
    var numberOfWheels = 2
    var numberOfseats = 0
    
}

struct Resolution {
    var width = 0.0
    var length = 0.0
}

class Video {
    
    var resolution = Resolution()
    var interlaced = true
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideo = Video()

print("\(someVideo.frameRate)")

let mrr = Resolution (width: 3, length: 8)

var sound = mrr

sound.length = 12.0
sound.width = 23.0

var come = sound.length

come.advancedBy(2.2)
come.floatingPointClass

enum CompassPoint {
    
    case North, South, East, West
}

var currentDirection = CompassPoint.West

let rememberedDirection = currentDirection
currentDirection = .East

if rememberedDirection == .West {
    
    print("The remembered direction")
    
} else {
    
    print("This direction isn't East")
    
}

let tenNine = Video()
tenNine.resolution = mrr
tenNine.interlaced = true
tenNine.name = "happy"
tenNine.frameRate = 7.3

let tenFive = tenNine

tenFive.frameRate = 56.0



let alsoTenEight = tenFive
alsoTenEight.frameRate = 31.0

//identity Operators

if tenFive === alsoTenEight {
    
    print("this is it")
    
}



