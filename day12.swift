class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
    print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary() {
    print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
   }   
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

// checkpoint 7

class Animal {
    var legs: Int

    init(legs: Int = 4){
        self.legs = 4
    }

    func speak(){
        print("I am a \(type(of: self)), I have \(legs) legs")
    }
}

class Dog: Animal {
    var sound:  String

    init(legs: Int = 4, sound: String = "bark"){
        self.sound = sound
        super.init(legs: legs)

    }
   override func speak(){
        print("I am a \(type(of: self)), I have \(legs) legs and I \(sound)")

    }
}

class Cat: Animal {
    var sound:  String
    var tame: Bool

    init(legs: Int = 4, sound: String = "meow", tame: Bool = true){
        self.sound = sound
        self.tame = tame
        super.init(legs: legs)
    }

       override func speak(){
             print("I am a \(type(of: self)), I have \(legs) legs and I \(sound), my tame status is \(tame)")

    }
}

class Corgi: Dog {
    override  init(legs: Int = 4, sound: String = "Corgi bark"){
        super.init(legs: legs)
        self.sound = sound
    }
}

class Poodle: Dog {
    override  init(legs: Int = 4, sound: String = "Poodle bark"){
        super.init(legs: legs)
        self.sound = sound
    }
}

class Lion: Cat {

  override  init(legs: Int = 4, sound: String = "Roar", tame: Bool){
      super.init(legs: legs)
      self.sound = sound
      self.tame = tame

    }
}
class Persian: Cat {
    override  init(legs: Int = 4, sound: String = "Persian Meow", tame: Bool = true){
        super.init(legs: legs)
        self.sound = sound
        self.tame = tame
      }
}
let genericAnimal = Animal()
let genericCat = Cat()
let persianCat = Persian()
let lionCat = Lion(sound: "override roar", tame: false)
let genericDog = Dog()
let corgiDog = Dog()
let poodleDog = Dog(legs: 6, sound: "mutant poodle bark")

genericAnimal.speak()
genericCat.speak()
persianCat.speak()
lionCat.speak()
genericDog.speak()
poodleDog.speak()