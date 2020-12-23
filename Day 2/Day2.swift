// Arrays
let countries = ["USA", "Pakistan", "China"];
countries[0] // USA
countries[1] // Pakistan

// Tuples
var name = (first: "Jack", last: "Black");
name.first // Jack

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"] // 1.78

// Collections
var teams = [String: String]()
teams["New York"] = "Giants"
var scores = Dictionary<String, int>()
var results = Array<Int>()

// Enums
enum Result {
    case success
    case failure
}
let result4 = Result.failure