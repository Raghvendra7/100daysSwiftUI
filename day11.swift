struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

// checkpoint6
struct Car {
    private let model: String
    private let numberOfSeat: Int
    private var currentGear: Int = 1

    mutating func gearUp() {
        currentGear = currentGear < 10 ? currentGear + 1 : currentGear

    } 
    mutating func gearDown() {
        currentGear -= currentGear > 2 ? currentGear - 1 : currentGear
    } 

    init(model: String, numberOfSeat: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeat = numberOfSeat
        self.currentGear = currentGear
    }
}