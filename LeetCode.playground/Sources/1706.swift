// 1706. Where Will the Ball Fall
// 2023.05.09
// https://leetcode.com/problems/where-will-the-ball-fall/description/?envType=study-plan&id=level-2
// 00:21:46

class Solution {
    func findBall(_ grid: [[Int]]) -> [Int] {
        var answer = [Int]()
        for i in 0..<grid[0].count{
            var result = dfs(i, 0, grid)
            if -1 == result{
                answer.append(-1)
            } else {
                answer.append(result)
            }
        }
        return answer
    }

    func dfs(_ x: Int, _ y: Int, _ grid: [[Int]]) -> Int{
        guard x < grid[0].count, x >= 0 else{
            return -1
        }
        guard y < grid.count else {
            return x
        }
        var sum = 1
        if x > 1 && grid[y][x] == -1{sum = grid[y][x] + grid[y][x - 1]}
        else if x < grid[0].count - 1 && grid[y][x] == 1 {sum = grid[y][x] + grid[y][x + 1]}
        if sum == 0{
            return -1
        }
        return dfs(x + grid[y][x], y + 1, grid)
    }
}

/*
 30% 수업까지 시간이 얼마 안남아서 코드리뷰를 더 하기에는 힘들다.
 상위를 보니 switch문을 사용했다.
 */
