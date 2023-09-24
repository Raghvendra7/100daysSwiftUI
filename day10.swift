struct Employee {
    let name: String
    var vacationRemaining: Int

    func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var vacationRemaining: Int {
    get {
        vacationAllocated - vacationTaken
    }

    set {
        vacationAllocated = vacationTaken + newValue
    }
}

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }

     init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}


struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

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