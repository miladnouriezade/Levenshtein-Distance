//
//  main.swift
//  LevenshteinDistance
//
//  Created by Milad Nourizade on 11/7/18.
//  Copyright © 2018 Milad Nourizade. All rights reserved.
//

import Foundation

print("Enter source :\t")
let source = readLine()
print("Enter target :\t")
let target = readLine()

func computeDistance(sourceString:String, goalString:String) -> Int {
    
    let sourceStringCount = sourceString.count + 1
    let goalStringCount = goalString.count + 1
    
    var matrix = Array(repeating: Array(repeating: 0, count: goalStringCount), count: sourceStringCount)
    
    
    for i in 0 ..< sourceStringCount  {
        matrix[i][0] = i
        
    }
    for j in 0 ..< goalStringCount {
        matrix[0][j] = j
    }
    for i in 1 ..< sourceStringCount {
        for j in 1 ..< goalStringCount {
            
            let iIndex = sourceString.index(sourceString.startIndex, offsetBy: i - 1)
            let jIndex = goalString.index(goalString.startIndex, offsetBy: j - 1)
            
            var num1 = matrix[i-1][j-1]
            var num2 = matrix[i-1][j]
            var num3 = matrix[i][j-1]
            
            num2 += 1
            num3 += 1
            if sourceString[iIndex] == goalString[jIndex] {
                num1 += 0
                
                matrix[i][j] = getMin(num1, num2, num3)
            }else{
                num1 += 1
                
                matrix[i][j] = getMin(num1, num2, num3)
            }
        }
    }
//    print(matrix)
    
    return matrix[sourceStringCount - 1][goalStringCount - 1]
}
func getMin(_ num1:Int,_ num2:Int,_ num3:Int) ->Int {
    var min = num1
    if num2 < min {
        min = num2
    }else if num3 < min {
        min = num3
    }
    return min
}

let Distance = computeDistance(sourceString: source!, goalString:target!)
print(Distance)
