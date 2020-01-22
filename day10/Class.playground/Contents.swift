/*
 Class is similliar with struct. But have 5 diferent with struct.
 1. Class never come with memberwise initializer. It means you need to create initializer manual.
 */

class Person {
    var name: String
    var address: String
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}

var person = Person(name: "Bayu", address: "Cisitu Baru")

/*
 2. You can create class from existing another class or "Inheritance". Struct can't inheritance other struct.
 So, You can do overriding method
 */

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!!")
    }
}

class Poodle: Dog {
    
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}


let poodle = Poodle(name: "Buddy")
poodle.makeNoise()

/*
 Final : add final keyword before class, if that class dont allow to inherit
 */

final class Cat {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


/*
 3. When you copy a struct, both the original and the copy are different things - changing one, wont change the other. when you copy class, the originaland the copy point the same thing - changing one does change order
 */

class Student {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var student1 = Student(name: "Bayu")
print(student1.name)
var student2 = student1
student2.name = "Firmawan"
print(student1.name)
print(student2.name)

/*
 Why? Because student1 and student2 point to the same object at memmory. It different when use struct
 */

struct StudentStruct {
    var name: String
}

var student3 = StudentStruct(name: "Bayu")
print(student3.name)
var student4 = student3
student4.name = "Firmawan"
print(student3.name)
print(student4.name)


/*
 Deinit
 */

class Teacher {
    var name: String = "John Doe"
    
    func printGreeting() {
        print("Hello \(name)")
    }
    
    deinit {
        print("\(name) deinit")
    }
}

for _ in 1...3 {
    let teacher = Teacher()
    teacher.printGreeting()
}

/*
 Mutability
 5. If you want to change property inside method, you dont need mutating
 */

class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)
