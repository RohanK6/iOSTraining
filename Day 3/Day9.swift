// Initializers / Constructors
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

// Private vs. Public
private var id: String
var id: Int