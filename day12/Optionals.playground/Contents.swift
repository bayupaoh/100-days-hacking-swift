/*
 Handling missing data (Wrapping Optional)
 */

var age: Int? = nil

age = 30

/*
 Unwarapping Optional with if let
 */

var name: String? = nil

name = "Bayu Paoh"
print(name)

if let unwrapped = name {
    print("Count of string is \(unwrapped.count)")
} else {
    print("Missing type")
}

/*
Unwarapping Optional with guard
*/

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide name")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

/*
 difference between if let and guard let is that your unwrapped optional remains usable after the guard code.
 */

/*
 Force Unwrapping
 */

let str = "5"
let num = Int(str)!

print(num)

/*
 Implicitly Unwrapped Optionals
 */

let age2: Int! = nil

print(age2)

/*
 Nil Coalescing
 */

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

/*
 Optional Chaining
 */

let names = ["John", "Paul", "George", "Ringo"]

names.first?.uppercased()

/*
 Optional Try
 */

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use the password")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh...")
}

//try! checkPassword("password")
//print("Ok")

/*
 Failable Initializer : an initializer that might work or might not.
 */

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let person = Person(id: "1")

/*
 Typecasting : it will be nil if the typecast failed, or a converted type otherwise.
 */

class Animal {}
class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Gukguk")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let result = pet as? Dog {
        result.makeNoise()
    }
}
