import Foundation;

// Enter your code here

let n = Int(readLine()!)!

let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let set = NSCountedSet(array: array)

for item in set {
    if set.count(for: item) == 1 {
        print(item)
    }
}