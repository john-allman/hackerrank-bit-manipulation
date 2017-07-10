import Foundation;

// Enter your code here

let t = Int(readLine()!)!

func flippingBits(_ input:String) -> Int {
    
    let bitinput = String(UInt32(input)!, radix: 2)
    let bit = String(repeatElement("0", count: 32-bitinput.characters.count)) + bitinput
    var result = Array<String>()
    
    for char in bit.characters {
        switch char {
        case "0":
            result.append("1")
        case "1":
            result.append("0")
        default:
            result.append(String(char))
        }
    }
    
    if let number = Int(result.joined(), radix: 2) {
        return number
    }
    return 0
}


for _ in 1...t {
    let input = readLine()!
    print(flippingBits(input))
}

