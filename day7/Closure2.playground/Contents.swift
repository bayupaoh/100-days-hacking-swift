/*
 Closures with parameters
 */

func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived!")
}

travel { (destination: String) in
    print("I'm driving to \(destination) with my car")
}

/*
 CLosure with return value
 */

func travel(action: (String) -> String) {
    print("I'm getting ready to go")
    let result = action("London")
    print(result)
    print("I arrived!")
}

travel { (destination: String) -> String in
    return "I'm driving to \(destination) with my car"
}

/*
 Shorthand arameters Names
 */

travel {
    return "I'm driving to \($0) with my car"
}

/*
 Closures with multiple
 */

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let result = action("London", 120)
    print(result)
    print("I arrived!")
}

travel {
    "I'm going to \($0) with \($1) miles per hours"
}

/*
 Returning Closure
 */

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

/* or can call directly. But its not recommend */

let result2 = travel()("London again")

/*
 Capturing value
 */

func travel2() -> (String) -> Void {
    var counter = 0
    return {
        counter += 1
        print("I'm going to \($0) = \(counter) times")
    }
}

let result3 = travel2()
result3("London")
result3("London")
result3("London")
