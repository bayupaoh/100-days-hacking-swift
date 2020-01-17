/*
 Function : Let us to reuse code. Function is start with func + function name+() + {}
 */

func printHelp() {
    let message = """
    Welcome to MyApp!

    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails
    """
    print(message)
}

printHelp()

/*
 Accepting Parameter : Function become more powerfull when they can customized. Value sent can into value is called parameters.To make your owns function accets parameters, give each parameter a name, then colon, then tell swift the type must be
 */

func square(number: Int) {
    print(number * number)
}

square(number: 10)

/*
 Returning Value : As well receiving data, function can return a value. you can use keyword return to send back data
 */

func square2(number: Int) -> Int {
    return number * number
}

let value = square2(number: 10)
print(value)

/*
 Parameters Labels : Swift let us to provide two names parameters : one to be used for internal and one to be use external
 */

func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Bayu")

/*
 Ommiting Parameters : You might dont need external parameters. You can add _ for parameters that you dont need to call parameter
 */

func greet(_ person: String) {
    print("Hi \(person)")
}

greet("Bayu")

/*
 Default Parameters : You can add default value from parameters. You just add = and default value
 */

func greet(_ person: String, nicely: Bool = true) {
    if nicely {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Bayu")
greet("Bayu", nicely: false)

/*
 Variadic Functions : You can make parameters variadic by writing "...". Variadic parameters are converted into arrays inside
 */

func square(number: Int...) {
    for item in number {
        print("\(item) squared is \(item * item)")
    }
}

square(number: 1,2,3)

/*
 Throwing functions
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

/*
 do starts a section of code that might cause problems, try is used before every function that might throw an error, and catch lets you handle errors gracefully.
 */

do {
    try checkPassword("password")
    print("Thats password is good!")
} catch {
    print("You can't use that password!")
}

/*
 InOut Function :
 All params inside function is constan. But you change them using inout.That params willchange reflect in the original avlue from variabel outside the function
 */

func doubleInPlace(number: inout Int) {
    number += 2
}

var myNum = 2
doubleInPlace(number: &myNum)
print(myNum)
