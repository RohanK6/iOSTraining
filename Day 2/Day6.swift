// Closures
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("New York")
print(message)

// Closure Multiple Parameters
travel {
    "I'm going to \($0) at \($1) miles per hour."
}