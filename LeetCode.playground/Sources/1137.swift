// 1137. N-th Tribonacci Number
// 2023.05.17
// https://leetcode.com/studyplan/dynamic-programming/
// Not Reocrd

class Solution {
    func tribonacci(_ n: Int) -> Int {
        guard n > 2 else {
            if n == 0 {return 0}
            return 1
        }

        var dic = [0:0, 1:1, 2:1]

        for i in 3...n{
            dic[i] = dic[i-1]! + dic[i-2]! + dic[i-3]!
        }

        return dic[n] ?? 0
    }
}

/*
 피보나치수열
 */
