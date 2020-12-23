// For Loops
let count = 1...10

for number in count {
    print("Number is \(number)")
}

for _ in 1...5 {
    print("\(_)")
}

// While loops
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// Nested loops
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(product)")
    }
}