import Foundation;

// Enter your code here

let q = Int(readLine()!)!

func greatXOR(_ n: Int64) -> Int64 {
    
    var s = n
    var ones: Int64 = 1
    
    while s > 0 {
        ones <<= 1
        s >>= 1
    }
    ones -= 1
    return n ^ ones
}

for _ in 1...q {
    let n = Int64(readLine()!)!
    print(greatXOR(n))
}


/*
 let inputs = (0..<Int(readLine()!)!).map{ _ in Int64(readLine()!)! }
 let results = inputs.map{ String(greatXOR($0)) }
 print(results.joined(separator: "\n"))
 */