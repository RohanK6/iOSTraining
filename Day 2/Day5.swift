// Functions
func sayHi() {
    print("Hi")
}

sayHi()


func squareNumber(number : Int) {
    print(number * number)
}

squareNumber(3)

func square(number : Int) -> Int {
    return number * number
}

let result = square(number: 8) // 64

// Variadic Functions
func square(numbers : Int...) {
    for number in numbers {
        print("\(number)")
    }
}