class Cat {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    func makeNoise() {
        print("Meow")
    }
}

class Lion: Cat {
    override func makeNoise() {
        print("Rawr!")
    }
}