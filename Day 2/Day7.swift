func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// I'm going to London at 60 miles per hour

// Returning from closures
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}