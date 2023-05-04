// 509. Fibonacci Number
// 2023.05.04
// https://leetcode.com/problems/fibonacci-number/description/?envType=study-plan&id=level-1
// 00:20:29

class Solution {
    var dp = [0:0, 1:1]
    func fib(_ n: Int) -> Int {
        guard n > 1, dp[n] == nil else {
            return dp[n]!
        }
        dp.updateValue(fib(n - 1) + fib(n - 2), forKey: n)
        return dp[n]!
    }

}

/*
 DP 문제이다. 쉬운 문제임에도 생각보다 오래 걸렸다.
 반복문으로 푼것도 있다.
 */
