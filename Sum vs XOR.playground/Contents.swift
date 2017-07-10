import Foundation;

// Enter your code here

let n = Int(readLine()!)!

func sumXOR(_ input: Int) -> Decimal {
    guard input > 0 else { return 1 }
    let zeroCount = Array(String(n, radix: 2).characters).filter({ $0 == "0" }).count
    return pow(2, zeroCount)
}

print(sumXOR(n))