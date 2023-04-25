// 392. Is Subsequence
// 2023.04.25
// https://leetcode.com/problems/is-subsequence/description/?envType=study-plan&id=level-1
// Time Out 01:21:02

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var beforIndex : String.Index = s.startIndex
        var tString = t
        if s == ""{
            return true
        }

        for i in s.indices{
            guard let index = tString.firstIndex(of: s[i]) else {
                return false
            }

            if index == t.endIndex{
                return false
            }
            
            tString = String(tString.suffix(tString.count - tString.distance(from: tString.startIndex, to: index) - 1))

            beforIndex = index
        }


        return true
    }
}

/*
 문자열을 다루는 부분이 어색해서 시간 오버
 String.Index -> Int 로 변환하는걸 응용
 */
