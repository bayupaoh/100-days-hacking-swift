
/* Aritmatic Operator */

let total = 13 + 12
let difference = 13 - 12
let multiply = 6 * 2
let divided = 6 / 2
let modulus = 7 % 2

/*
 Overloading Operator : which is a fancy way of saying that what an operator does depends on the values you use it with.
 But Remember, You can't add integer swith string because swift won't let you mix the data type
 */

let meaningOfLife = 25
let doubleMeaning = meaningOfLife + 25

let fakers = "Fakers gonna "
let action = fakers + "fake"

let first = ["John", "Paul"]
let second = ["George", "Ringo"]
let beatles = first + second

/*
 Compound Operator = Swift has a shorthand to combine assignment and operator.
 */

var score = 42
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

/*
 Comparison operator
 */

let firstScore = 4
let secondScore = 3

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore <= secondScore

"Taylor" <= "Swift"

/*
 Combining Condition : you can combine comparison with && or || in single line. You can use && and || more once, but it can be hard to read
 */

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

/*
 Ternary operator is way to define if else at once line
 */

let firstCard = 1
let secondCard = 2

print(firstScore == secondScore ? "First Score is same with Second Score" : "First Score and Second Score is different")

/*
 Switch case is diferent way to declare if - else. You just write your condition once, and list all possibilty and what should happenfor each item.
 When all possibility is missed of, default will execute.
 Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword
 */

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umberella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunglasses")
    fallthrough
default:
    print("Enjoy your day")
}

/*
 Range Operator has two way. 1..<5 (1, 2, 3, and 4) or 1...5 (1, 2, 3, 4, 5). Range operator is very usefull when you use switch case
 */

let point = 75

switch point {
case 0..< 50:
    print("Your failed badly")
case 50..<85:
    print("Its Good")
default:
    print("You did Great!!")
}
