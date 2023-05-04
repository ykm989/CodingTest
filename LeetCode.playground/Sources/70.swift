// 70. Climbind Stairs
// 2023.05.04
// https://leetcode.com/problems/climbing-stairs/description/?envType=study-plan&id=level-1
// 00:12:21

class Solution {
    var dp: [Int:Int] = [0:0, 1:1, 2:2]
    func climbStairs(_ n: Int) -> Int {
        guard n > 2, dp[n] == nil else {
            return dp[n]!
        }
        dp.updateValue(climbStairs(n - 1) + climbStairs(n - 2), forKey: n)
        return dp[n]!
    }
}

/*
 509이랑 같은 문제이다.
 간단한 DP문제라 쉽게 풀었다.
 */
