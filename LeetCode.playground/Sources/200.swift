// 200. Number of Islands
// 2023.05.04
// https://leetcode.com/problems/number-of-islands/description/?envType=study-plan&id=level-1
// 00:18:09

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var map = grid
        var answer = 0

        for i in 0..<grid.count{
            for j in 0..<grid[0].count{
                if map[i][j] == "1"{
                    dfs(&map, i, j)
                    answer += 1
                }
            }
        }

        return answer
    }

    

    func dfs(_ map: inout [[Character]], _ c: Int, _ r: Int){
        guard c >= 0, c < map.count, r >= 0, r < map[0].count, map[c][r] == "1" else {
            return
        }

        map[c][r] = "0"

        dfs(&map, c, r + 1)
        dfs(&map, c, r - 1)
        dfs(&map, c + 1, r)
        dfs(&map, c - 1, r)
    }
}

/*
 DFS를 이용해서는 문제 맵 문제.
 이 문제를 보면 항상 푸는데 실패해서 마음이 아팠는대, 오늘은 성공해서 기분이 좋다.
 45.25%로 괜찮은 성능을 만들어내는대 성공했다.
 */
