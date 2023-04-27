// 3. Longest Substring Without Repeating Characters
// 2023.04.27
// https://leetcode.com/problems/longest-substring-without-repeating-characters/description/?languageTags=swift
// Time Out

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var len = 0
        var chars = [Character]()

        for c in s {
            if chars.contains(c){
              chars.removeSubrange(0...chars.firstIndex(of: c)!)
            }

            chars.append(c)
            len = max(len, chars.count)
        }
        return len
    }
}

/*
 처음에는 LCS라 생각했으나 LCS와는 좀 다르다고한다.
 
 class Solution {
     func lengthOfLongestSubstring(_ s: String) -> Int {
         guard !s.isEmpty else { return 0 }
         var len = 0, chars = [Character]()
         for c in s {
             if let idx = chars.firstIndex(of: c) {
                 print("before: \(chars)", idx, c)
                 chars.removeSubrange(0...idx)
                 print("after: \(chars)")
             }
             chars.append(c)
             len = max(len, chars.count)
         }
         return len
     }
 }
 
 위 코드는 다른 사람의 코드를 가져왔다.
 두가지 알고리즘을 응용해야하는 문제라고 한다.
 Slicing Window와 Two Pointer Algorithm이라고 한다.
 
 Slicing Window
 일정한 구간의 window(범위)를 이용해서 반복문을 돌릴 때
 이미 계산된 범위 값에서 제일 앞의 값을 빼고 제일 뒤의 값을 더하는 식으로 중복된 연산을 피한다.
 
 Two Pointer Algorithm
 Slicing Window와 비슷하지만 다른 알고리즘
 결정적으로 length를 유동적으로 변화시킨다.
 start, end 두 개의 포인터를 사용해서 end를 증가시키고 범위 안에 값이 목표치보다 크면 start를 증가시키는 방법을 사용한다.
 그렇게 제일 큰 길이를 구한다.
 
 위 코드에서는 for 문을 통해 c를 end역활로 해주고, chars를 이용해서 chars의 시작 부분이 start이다.
 상당히 잘 짜여진 코드인거같다.
 */
