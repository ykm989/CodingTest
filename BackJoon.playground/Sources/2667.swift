// 단지 번호 붙이기
// 2023.04.18
// https://www.acmicpc.net/problem/2667

import Foundation

public func solution(){
    let size = Int(readLine()!)!

    var cnt = 0
    var map = [[Int]]()

    for _ in 0..<size {
        map.append(Array(readLine()!).map{Int(String($0))!})
    }
        
    var queue : [Int] = []
        
    for i in 0..<size{
        for j in 0..<size{
            if map[i][j] == 1{
                cnt = 1
                queue.append(dfs(i, j))
            }
        }
    }

    print(queue.count)
    for i in queue.sorted(by: <){
        print(i)
    }

    func dfs(_ y: Int, _ x: Int) -> Int{
        map[y][x] = 0

        let dx = [1,-1,0,0]
        let dy = [0,0,1,-1]

        for i in 0..<4{
            if (0..<size).contains(y + dy[i]) && (0..<size).contains(x + dx[i]) && map[y + dy[i]][x + dx[i]] == 1{
                dfs(y + dy[i], x + dx[i])
                cnt += 1
            }
        }
        return cnt
    }

}

// dfs로 문제 해결
// 나중에 다시 풀기
