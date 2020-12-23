// Structs
struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an olympic sport
            "
        }
        else {
            return "\(name) is not an olympic sport"
        }
    }
}

var tennis = Sport(name: "Tennis")
var basketball = Spot(name: "Basketball")
var chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)

didSet {
    print("Allows for Swift to print everytime the variable will change")
}

// Like Java, this.name = name --> self.name = name