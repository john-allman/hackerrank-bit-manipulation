import Foundation;

// Enter your code here

let A = Int(readLine()!)!
let B = Int(readLine()!)!

func maximizingXOR(_ first:Int, _ second:Int) -> Int {
    
    let A = String(first, radix:2)
    let B = String(second, radix:2)
    
    let arrA = A.characters.map({ String($0) })
    let arrB = B.characters.map({ String($0) })
    
    let count = arrA.count > arrB.count ? arrA.count : arrB.count
    
    if arrA.count != arrB.count {
        return Int(Array(repeating: "1", count: count).joined(), radix: 2)!
    }
    
    for (index,char) in arrA.enumerated() {
        if char != arrB[index] {
            return Int(Array(repeating: "1", count: count - index).joined(), radix: 2)!
        }
    }
    return 0
}


print(maximizingXOR(A, B))
