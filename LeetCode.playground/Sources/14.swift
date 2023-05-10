// 14. Longest Common Prefix
// 2023.05.10
// https://leetcode.com/problems/longest-common-prefix/description/?envType=study-plan&id=level-2
// 00:22:03

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var common = strs[0]
        for ch in strs {
            while !ch.hasPrefix(common) {
                common = String(common.dropLast())
            }
        }
        return common
    }
}

/*
 prefix를 제대로 확인하지 않아서 결국 답안을 봤다.
 제대로 풀었던건대 다음에는 문제를 제대로 읽어보자
 */
