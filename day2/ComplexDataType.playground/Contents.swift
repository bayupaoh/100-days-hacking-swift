/*
 Array is a collection value that store a single value. To declare array at Swift, it starts and ends using bracket and separate each item using ,. You can read each value using number from 0. But, be carefull because swift will crash if the index doesnt exist.
 
 If you're using type annotation, you can add [data_type]
 */
let john = "John Lennon"
let paul = "Paul Mccartney"
let george = "George Harrison"
let ringgo = "Ringgo Star"

let beatles = [john, paul, george, ringgo]
beatles[0]

/*
 Set is like array. but has a bit different:
 1. Item in Set store in random order (so you can't access by number index)
 2. Item in Set is Unique
 
 */

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

/*
 Tuples is like array. but tuples are diferent.
 1. you can't add or remove item because they ar fixed in size
 2. you can't change type of itemin a tuple
 3. you can access tuple by numerical position or by names, but swift dont let you access number and number that doesnt exist
 */

let name = (first: "Taylor", last: "Swift")
name.first
name.1

/*
 Array vs Set vs Tuples
 1. If you need fixed collection that can access from osition or name, using Tuples
 2. If you need collection that value must unique or you need to be able to check whether a specific item is in there extremely quickly, using set
 3. If you collection hat can duplicate or the order of your item matter, using array
 */

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

/*
 Sometimes you want to collection the datas, but you want to access using anything you want. The most common way of storing dictionary data using string. How to use dictionaries? dictionaries start with bracket and end bracket and each item using ,. We also using colon (:) to separate key and value.
 
 If you want using type annotation, using brackets with a colon between your identifier and value types. For example, [String: Double] and [String: String].
 */

let height = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.60
]

height["Taylor Swift"]

let singers: [String: String] = [
    "Eminem": "HipHop",
    "Taylor Swift": "Pop"
]

singers["Eminem"]

/*
 When key from dictionary is doesnt exist, will return nil. but if you want a default value u can add default at dictionary
 */

let iceCreams: [String: String] = [
    "Paul": "Vanila",
    "William": "Chocolate"
]

iceCreams["Paul"]
iceCreams["Charlote"]
iceCreams["Charlote", default: "Unknown"]

/*
 Array, Set, and Dictionary is collection because collect values together in one values.
 if you want to to create Dictionary with empty data just write its type and followed parenthesis. Sample :
 */

var teams = [String: String]()
teams["juventus"] = "Bianconary"

/*
 Similliar with dictionary, if you want to declare empty array like this
 */

var result = [Int]()
result.append(1)

/*
 Exception is when declare empty set. Its definitely diferent
 */

var usernames = Set<String>()
usernames.insert("@bayupaoh")

/*
 But why? Because swift has special syntax only for Dictionary and array. Other type must se angle bracket sytax. BUt if you still use angle bracket, you can like this
 */

var students = Array<String>()
var score = Dictionary<String, Int>()

/*
 Enumeration or enum is way defining groups of related values in a way that makes them easier
 */

enum Result {
    case success
    case failure
}

let result1 = Result.success

/*
 Enums can also store associated value to add additional information
 */

enum Activity {
    case boring
    case running(destination: String)
    case talking(topic: String)
    case singing(genre: String)
}

let talking = Activity.running(destination: "Jakarta")

/*
 Sometimes you need to assign values to enums so they have a meaning. Sample
 enum Planet: Int {
     case mercury
     case venus
     case earth
     case mars
 }
 
 swift will automatically each of those number starting from 0 and you can use that number to create an instance of the appropriate enum case
 */

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let planet = Planet(rawValue: 1)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let planet1 = Planet2(rawValue: 1)
let planet2 = Planet2(rawValue: 2)
let planet3 = Planet2(rawValue: 0)

enum City: String {
    case bandung = "bdo"
    case tanggerang = "cgk"
    case jakarta = "jkt"
}

let city1 = City(rawValue: "bdo")
let city2 = City(rawValue: "jkt")
