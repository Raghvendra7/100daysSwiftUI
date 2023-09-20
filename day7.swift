func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
pythagoras(a: 3, b: 4)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")