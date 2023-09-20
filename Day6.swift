var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}


var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
    
print("Critical hit!")

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

//  use continue when you want to skip the rest of the current loop iteration, and use break when you want to skip all remaining loop iterations.

// The ternary conditional operator lets us check WTF: What, True, False. 

func fizzbuzz(){
    for val in 1...100 {
        if val.isMultiple(of: 3) && val.isMultiple(of: 5){
            print("FizzBuzz")
        } else if val.isMultiple(of: 3){
            print("Fizz")
        } else if val.isMultiple(of: 5) {
            print("Buzz")
        } else {
            print(val)
        }
    }
}
fizzbuzz()