import UIKit

/*
 Variabel  is places where you can store the data like number, alphabet, etc.
 Why they called variabel? because they can vary (you can change their value freely)
*/

var str = "Hello, playground"
str = "Good Bye"

/*
 for big number, you can use _ for separate
*/

var age = 38
var population = 8_000_0000

/*
 In general, swift using double qutore for value. but it can be used for multiline. for multiline you can using triple double quotes and add \ each line excep last line
 */
var description = """
Bayu is newbie swift programmer
So, he try to learn swift from 100 days swift challenges
"""

/*
 Double & Boolean
*/

var pi = 3.14
var awesome = true

/*
 String interpolation is ability to place variabel inside your string to make them is beautiful.
 */

var score = 85
var title = "Your score was \(85)"

/*
 Constant
 */

let taylor = "Swift"

/*
when you create a variable or contant like this :
 let str = "hello world"
That called type inference. Type inference - swift able to infer the data type based on how you create it. If you want to explicite declare data type, you use : <data type. ex: Int, Bool, Double,etc>
 */

let album: String = "Reputation"
let year: Int = 2020
let isRockGenre: Bool = true
let coverHeight: Double = 4.0
