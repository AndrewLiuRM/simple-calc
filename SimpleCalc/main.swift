//
//  main.swift
//  SimpleCalc
//
//  Created by Andrew Liu on 10/5/17.
//  Copyright © 2017 Andrew Liu. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

var input = readLine(strippingNewline: true)!
var data = input.split(separator: " ")
var length = data.count
if length == 0 {
    print("Please input something.")
} else if length == 1 {
    var result = 0.0
    let front = Double(input)!
    //let front = UInt.init(input)!
    
    let sign = readLine(strippingNewline: true)!
    
    let end = Double(readLine(strippingNewline: true)!)!
    //let end = UInt.init(readLine(strippingNewline: true)!)!
    
    switch sign {
    case "+" :
        result = front + end
        print(result);
        break
    case "-" :
        result = front - end
        print(result);
        break
    case "*" :
        result = front * end
        print(result);
        break
    case "/" :
        result = front / end
        print(result);
        break
    case "%" :
        result = front.truncatingRemainder(dividingBy: end)
        print(result);
        break
    default :
        print("Please input a valid operator")
        break
    }
} else {
    let operate = data[length - 1]
    switch operate {
    case "count":
        print(length - 1)
        break
    case "avg":
        var sum = 0
        for n in 0...(length - 2) {
            sum += Int(UInt.init(data[n])!)
        }
        print(sum / (length - 1))
        break
    case "fact":
        var num = UInt.init(data[0])!
        var sum = 1
        for n in 1...num {
            sum = sum * Int(n)
        }
        print(sum)
        break
    default:
        print("Invalid arguement")
    }

}



