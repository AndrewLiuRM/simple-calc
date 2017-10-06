//
//  main.swift
//  SimpleCalc
//
//  Created by Andrew Liu on 10/5/17.
//  Copyright © 2017 Andrew Liu. All rights reserved.
//
// This project is added with Extra and Extra extra credits.

import Foundation


func calc(sign: String, front: Double, end: Double) {
    var result = 0.0
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
}


print("Enter an expression separated by returns:")

var input = readLine(strippingNewline: true)!
var data = input.split(separator: " ")
var length = data.count
if length == 0 {
    print("Please input something.")
} else if length == 1 {
    //var result = 0.0
    let front = Double(input)!
    //let front = UInt.init(input)!
    
    let sign = readLine(strippingNewline: true)!
    
    let end = Double(readLine(strippingNewline: true)!)!
    //let end = UInt.init(readLine(strippingNewline: true)!)!
    
    calc(sign: sign, front: front, end: end)
    
} else {
    let operate = data[length - 1]
    if data[0] == "calc" {
        switch operate {
        case "count":
            print(length - 2)
            break
        case "avg":
            var sum = 0
            for n in 1...(length - 2) {
                sum += Int(UInt.init(data[n])!)
            }
            print(sum / (length - 2))
            break
        case "fact":
            var num = UInt.init(data[1])!
            var sum = 1
            for n in 1...num {
                sum = sum * Int(n)
            }
            print(sum)
            break
        default:
            let front = Double(data[1])!
            let sign = String(data[2])
            let end = Double(data[3])!
            
            calc(sign: sign, front: front, end: end)
        }
    } else {
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

}

