/*
 Protocols : way of describing what properties and methods something must have. anh then, tell swift which ypes use protocols - a process known to adopt. We can't instance protocols, because it's not type.
 */

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

displayID(thing: User(id: "745"))

/*
 Inheritance Protocol: You can inheritance protocol
 */


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

/*
 Extension : extension allow create method and computate properties
 */

extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

12.squared()
12.isEven

/*
 Protocols Extension : they are like regular extension, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.
 */

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

pythons.summarize()
beatles.summarize()

/*
 Protocol-Oriented Programming
 Protocol extension can provide default implementations for our own protocol methods - crafting your code with extension and protocol extension
 */

protocol IdentifiableAccount {
    var id: String { get set }
    func identify()
}

extension IdentifiableAccount {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Account: IdentifiableAccount {
    var id: String
}

let account = Account(id: "bayupaoh")
account.identify()
