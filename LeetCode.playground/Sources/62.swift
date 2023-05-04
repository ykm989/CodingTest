// 62. Unique Paths
// 2023.05.04
// https://leetcode.com/problems/unique-paths/description/?envType=study-plan&id=level-1
// 00:27:18

class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 0,count: n) ,count: m)
        dp[0][0] = 1
        for i in 0..<m{
            for j in 0..<n{
                if i > 0{
                    dp[i][j] += dp[i - 1][j]
                }
                if j > 0{
                    dp[i][j] += dp[i][j - 1]
                }
            }
        }
        return dp[m - 1][n - 1]
    }
}

/*
 DP문제이다.
 가는 방법 문제이다.
 여러번 실패해서 자신 없던 문제 중 하나이다.
 처음에 잘못 푼줄 알고 이것저것 시도하느니라 생각보다 시간이 많이 걸렸다.
 제대로 풀었는대
 
 67.77% 준수하다.
 */
