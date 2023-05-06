// 424. Longest Repeating Character Replacement
// 2023.05.06
// https://leetcode.com/problems/longest-repeating-character-replacement/description/?envType=study-plan&id=level-1
// 00:39:17 포기

class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var left = 0, longestCount = 0
        var answer = 0
        var window = [Character:Int]()
        var sArray = Array(s)

        for i in 0..<sArray.count{
            window[sArray[i], default: 0] += 1
            longestCount = max(longestCount, window[sArray[i]]!)

            if i - left + 1 - longestCount > k{
                window[sArray[left]]! -= 1
                left += 1
            }
            answer = max(answer, i - left + 1)
        }
        return answer
    }
}

/*
 중간에 풀다 포기하고 풀이를 봤다.
 window의 값을 합으로만 할려고 했는데 보니까 대부분은 dictionary가 맞는거같다.
 two pointer알고리즘을 사용.
 */
