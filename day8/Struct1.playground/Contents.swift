/*
 Basic Struct
 */
struct Sport {
    var name: String
}

var sport = Sport(name: "Tennis")
print(sport.name)
sport.name = "Lawn Tennis"

/*
 Struct has 2 properties : 1. Strored Properties 2. Computed Properties
 Computed Properties :
 Computed properties is property that runs code to figure out it value.
 */

struct SportData {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = SportData(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

/*
 Property Observer : Property observer let you run the code before or after property changes
 */

struct Progress {
    var task: String
    var mount: Int {
        didSet { // will execute after property change
            print("\(task) is now \(mount)%")
        }
        
        willSet { // will execute before property change
            print("\(task) will change \(mount)%")
        }
    }
}

var progress = Progress(task: "Loading", mount: 0)
progress.mount = 10
progress.mount = 30
progress.mount = 70
progress.mount = 100

/*
 Methods
 */

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

/*
 Mutating Methods :
 Swift wont let you to write methods in struct that change properties unless you specifically request it. For request it, you need keyword "mutating"
 */

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonimous"
    }
}

var person = Person(name: "Bayu")
person.makeAnonymous()
print(person.name)

/*
 Properties and method of string
 */

let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

/*
 Properties and method of array
 */

var toys = ["Woody"]
toys.append("Buzz")
print(toys.count)
print(toys.sorted())
toys.firstIndex(of: "Woody")
toys.remove(at: 0)
