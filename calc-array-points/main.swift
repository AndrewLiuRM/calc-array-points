//
//  main.swift
//  calc-array-points
//
//  Created by Andrew Liu on 10/12/17.
//  Copyright © 2017 Andrew Liu. All rights reserved.
//

import Foundation

print("Hello, World!")

func add(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2;
}

func subtract(_ num1: Int, _ num2: Int) -> Int {
    return num1 - num2;
}

func multiply(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2;
}

func divide(_ num1: Int, _ num2: Int) -> Int {
    return num1 / num2;
}

func calculator(calculate:(Int, Int) -> Int, _ num1: Int?, _ num2: Int?) -> Int {
    if (num1 == nil || num2 == nil) {
        return Int(FP_NAN)
    }
    return calculate(num1!, num2!)
}

func arrayFunAdd(_ nums: [Int]) -> Int {
    var result = 0;
    for num in nums {
        result += num
    }
    return result
}

func arrayFunMultiply(_ nums: [Int]) -> Int {
    var result = 0;
    for num in nums {
        result *= num
    }
    return result
}

func arrayFunCount(_ nums: [Int]) -> Int {
    return nums.count
}

func arrayFunAvg(_ nums: [Int]) -> Int {
    var result = 0;
    for num in nums {
        result += num
    }
    return result / nums.count
}

func arrayFun(function: ([Int]) -> Int, _ nums: Int?...) -> Int {
    if hasNil(nums: nums) {
        return Int(FP_NAN)
    } else {
        return function(convertOptional(nums: nums));
    }

}

func hasNil(nums: [Int?]) -> Bool {
    for num in nums {
        if num == nil {
            return true
        }
    }
    return false;
}

func convertOptional(nums: [Int?]) -> [Int] {
    var newArray:[Int] = [];
    for num in nums {
        newArray.append(num!)
    }
    return newArray
}

func addPoint(P1: (x: Int, y: Int), P2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (P1.x + P2.x, P1.y + P2.y)
}

func SubtractPoint(P1: (x: Int, y: Int), P2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (P1.x - P2.x, P1.y - P2.y)
}

func addPointDic(P1: [String: Int], P2: [String: Int]) -> [String: Int] {
    if (validate(dict: P1, target: "x") && validate(dict: P1, target: "y") && validate(dict: P2, target: "x") && validate(dict: P2, target: "x")) {
        return ["x": P1["x"]! + P2["x"]!, "y": P1["y"]! + P2["y"]!]
    } else {
        return ["error" : Int(FP_NAN)]
    }
    
}

func SubtractPointDic(P1: [String: Int], P2: [String: Int]) -> [String: Int] {
    if (validate(dict: P1, target: "x") && validate(dict: P1, target: "y") && validate(dict: P2, target: "x") && validate(dict: P2, target: "x")) {
        return ["x": P1["x"]! - P2["x"]!, "y": P1["y"]! - P2["y"]!]
    } else {
        return ["error" : Int(FP_NAN)]
    }
    
}

func validate(dict: [String: Int], target: String) -> Bool {
    return dict.keys.contains(target)
}

func validate(dict: [String: Double], target: String) -> Bool {
    return dict.keys.contains(target)
}

func addPoint(P1: (x: Double, y: Double), P2: (x: Double, y: Double)) -> (x: Double, y: Double) {
    return (P1.x + P2.x, P1.y + P2.y)
}

func SubtractPoint(P1: (x: Double, y: Double), P2: (x: Double, y: Double)) -> (x: Double, y: Double) {
    return (P1.x - P2.x, P1.y - P2.y)
}

func addPointDic(P1: [String: Double], P2: [String: Double]) -> [String: Double] {
    if (validate(dict: P1, target: "x") && validate(dict: P1, target: "y") && validate(dict: P2, target: "x") && validate(dict: P2, target: "x")) {
        return ["x": P1["x"]! + P2["x"]!, "y": P1["y"]! + P2["y"]!]
    } else {
        return ["error" : Double.nan]
    }
    
}

func SubtractPointDic(P1: [String: Double], P2: [String: Double]) -> [String: Double] {
    if (validate(dict: P1, target: "x") && validate(dict: P1, target: "y") && validate(dict: P2, target: "x") && validate(dict: P2, target: "x")) {
        return ["x": P1["x"]! - P2["x"]!, "y": P1["y"]! - P2["y"]!]
    } else {
        return ["error" : Double.nan]
    }
    
}
