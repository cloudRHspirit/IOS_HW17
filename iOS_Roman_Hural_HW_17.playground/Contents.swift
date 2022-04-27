import UIKit
import Foundation

//MARK: - 1 task

//MARK: - Functions
func countingToTen (closure: () -> Void) {
    for counter in 1...10 {
        print(counter)
    }
    closure()
}

//MARK: - Closures
let clsr = {
     print("calling closure")
}

countingToTen(closure: clsr)

//MARK: - 2 task

//MARK: - Functions
func isVowel(_ symbol: Character) -> Bool {
    switch symbol {
    case "a", "e", "i", "o", "u", "y":
        return true
    default:
        return false
    }
}

//MARK: - Variables
var randomStr: String = "01!@bacdefghijklmnopqrstuvwxyz43256789#$%^&"
var chrctrArr = [String]()

//MARK: - Closures
let sortedString: (String, String) -> Bool = {s1, s2 -> Bool in
    guard let f1 = s1.first, let f2 = s2.first else {
        return s1 < s2
    }
    if !isVowel(f1) && isVowel(f2) {
        return false
    }
    if isVowel(f1) && !isVowel(f2) {
        return true
    }
    if !f1.isLetter && f2.isLetter {
        return false
    }
    if f1.isLetter && !f2.isLetter {
        return true
    }
    if !f1.isNumber && f2.isNumber {
        return false
    }
    if f1.isNumber && !f2.isNumber {
        return true
    }
    return s1 < s2
}

//MARK: - Procedures
for chrctr in randomStr {
    chrctrArr.append(String(chrctr))
}

print(chrctrArr.sorted(by: sortedString))

//MARK: - 3 task

//MARK: - Extensions
extension Character {
    func isVowel(symbol: Character) -> Bool {
            let modifiedSymbol = symbol.lowercased()
            if modifiedSymbol == "a" || modifiedSymbol == "e" || modifiedSymbol == "i" || modifiedSymbol == "o" || modifiedSymbol == "u" || modifiedSymbol == "y" {
            return true
        } else {
            return false
        }
    }
}

//MARK: - Variables
var checkingSymbol: Character = "A"

//MARK: - Procedures
checkingSymbol.isVowel(symbol: checkingSymbol)

//MARK: - 4 task

//MARK: - Extensions
extension Workout: CustomStringConvertible {
    var description: String {
        return "You have run \(distance) km for \(time) time with average heart rate \(averageHR)"
    }
}

extension Workout {
    var speed: Double {
        return Double(distance/time)
    }
}

//MARK: - Structures
struct Workout {
    var distance: Int
    var time: Int
    var averageHR: Int
    
    mutating func harderWorkout() -> Workout {
        let anotherInstance = Workout(distance: distance*2, time: time*2, averageHR: averageHR+30)
        return anotherInstance
    }
}

//MARK: - Instances
var Roman = Workout(distance: 50, time: 40, averageHR: 120)

//MARK: - Procedures
print(Roman)
print(Roman.harderWorkout())
