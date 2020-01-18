/*
 Basic Closure : You can create a function and assign it to a variable.
 */

let driving = {
    print("I'm driving in my car")
}

driving()

/* Parameter at closure
 Note : Diferent function and closure is you dont need parameter label for parameters
 */

let driving2 = { (destination: String) in
    print("I'm driving to \(destination)")
}

driving2("London")

/*
 Returning Value : You can return a value like function. You just add return type before "in" keyword and then use return inside closure
 */

let driving3 = { (destination: String) -> String in
    return "I'm driving to \(destination)"
}

let result = driving3("Jakarta")
print(result)

/*
 Closure as Parameters
 */

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I Arrived")
}

travel(action: driving)

/*
 Trailing Closure Syntax : If the last parameters function is closure, you can use special syntaxcalled Trailing Closure Syntax. You can pass it directly after function inside braces.
 */

travel {
    print("test trailing")
}
