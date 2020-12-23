// + Operand
let lyric1 = "Hi"
let lyric2 = "World"
let fulllyric = lyric1 + " " + lyric2

// Compound Operators
var score = 90
score += 5 // 95 --> score

// Comparison Operators
3 == 2 // False
3 != 2 // True
"Alpha" < "Beta" // True

// Conditionals
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Switch
let weather = "rain"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}