/*
 Initializer
 */

struct UserDefault {
    var username: String
}

let userDefault = UserDefault(username: "bayupaoh")

struct User {
    var username: String
    
    init() {
        username = "anonimous"
        print("Creating new user")
    }
    
    /*
     You don’t write func before initializers, but you do need to make sure all properties have a value before the initializer ends.
     */
    
}

let user = User()

/*
 Self : Insieds method, you get a special constant called self. Self usefull to distinguish between the property and the parameter
 */

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}

let person = Person(name: "bayu")

/*
 Lazy : Create object when object called
 */

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var result2 = Person2(name: "Bayu")
result2.familyTree

/*
 Static Properti
 */

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let student1 = Student(name: "Bayu")
print(Student.classSize)
let student2 = Student(name: "Firmawan")
print(Student.classSize)

/*
 Access Control
 */

struct Person3 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My Name is \(id)"
    }
}

let person3 = Person3(id: "bayu")
print(person3.identify())

