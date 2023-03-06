// 표 편집
// https://school.programmers.co.kr/learn/courses/30/lessons/81303

import Foundation

func solution(_ n:Int, _ k:Int, _ cmd:[String]) -> String {
    var result = Array(repeating:"O", count: n)
    var up = [Int](-1..<n), down = [Int](1...n)
    var deleteList = [Int]()
    var index = k
        
    for command in cmd {
        let c = command.components(separatedBy: " ")
        
        switch c[0] {
        case "U":
            for _ in 0..<Int(c[1])! {
                index = up[index]
            }
        case "D":
            for _ in 0..<Int(c[1])! {
                index = down[index]
            }
        case "C":
            deleteList.append(index)
            if up[index] != -1 {
                down[up[index]] = down[index]
            }

            if down[index] != n {
                up[down[index]] = up[index]
            }
            
            index = down[index] == n ? up[index] : down[index]
        case "Z":
            if let back = deleteList.popLast() {
                
                if up[back] != -1 {
                    down[up[back]] = back
                }
                if down[back] != n {
                    up[down[back]] = back
                }
            
            }
        default:
            break
        }
    }
    
    for s in deleteList {
        result[s] = "X"
    }
    
    return result.joined(separator: "")
}
