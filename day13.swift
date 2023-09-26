protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

//checkpoint 8
protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var agentName: String {get set}

    func salesSummary()
}

extension Building {
    func salesSummary() {
        print("The building has \(rooms) rooms and it costs \(cost) USD in total." + "This building is handled by \(agentName).")
    }
}

struct House: Building {
    var rooms = 8
    var cost = 100000000
    var agentName = "Mr House Agent"
}

struct Office: Building {
    var rooms = 50
    var cost = 500000000
    var agentName = "Mr Johnny English"
}

let myHouse = House()
myHouse.salesSummary()

let myOffice = Office()
myOffice.salesSummary()