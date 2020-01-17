/* For Loop : it will loop array and range. If you don't use variabel constant, you can replace with _ */

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print(album)
}

for _ in 1...5 {
    print("Play")
}

/* While Loop */

var number = 1

while number != 5 {
    print(number)
    number += 1
}

print("Ready or not, here I Come!")

/* Repeat Loops */

var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 != 5

print("Ready or not, here I Come!")

/* Exiting Loop */

var number3 = 1

while number3 != 5 {
    print(number3)
    
    if number3 == 2 {
        print("Lets go now")
        break
    }
    
    number3 += 1
}

/* Exiting Multiple Loop */

outerloop : for i in 1...5 {
    for j in 1...5 {
        print("Print this")
        
        if i == 3 {
            print("Get out now")
            break outerloop
        }
    }
}

/* Skipping Item */

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

/* Infinite Loops */

var counter = 1

while true {
    print(counter)
    counter += 1
    
    if counter == 10 {
        break
    }
}
