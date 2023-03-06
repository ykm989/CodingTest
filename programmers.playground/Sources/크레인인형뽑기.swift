// 크레인 인형 뽑기
// https://school.programmers.co.kr/learn/courses/30/lessons/64061

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stack : [[Int]] = []
    var arr: [Int] = []
    var result: Int = 0
    var bucket: [Int] = []
    var move = moves
    
    for i in 0..<board.count{
        arr = []
        
        for j in 0..<board.count{
            if board[j][i] != 0{
                arr.append(board[j][i])
            }
        }
        
        stack.append(arr.reversed())
    }
    
    for i in move{
        if var doll = stack[i - 1].popLast(){
            // print(doll, bucket.last, doll == bucket.last)
            if doll == bucket.last{
                result += 2
                bucket.popLast()
            }
            else{
                bucket.append(doll)
            }
            
        }
    }
    
    // board.forEach{stack.append($0)}
    
    return result
}

/*
[0,0,0,0,0]
[0,0,1,0,3]
[0,2,5,0,1]
[4,2,4,4,2]
[3,5,1,3,1]

[4,3,1,1,3,2,3]
*/

