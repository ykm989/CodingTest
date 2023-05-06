// 438. Find All Anagrams in a String
// 2023.05.06
// https://leetcode.com/problems/find-all-anagrams-in-a-string/description/?envType=study-plan&id=level-1
// Time out 2시간 이상

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var result = [Int]()
        let sChars = Array(s), pChars = Array(p)
        var dict = [Character: Int]()
        var left = 0, right = 0, count = pChars.count
        
        // Initialize the dictionary with the character counts in p
        for char in pChars {
            dict[char, default: 0] += 1
        }

        print(dict)
        
        while right < sChars.count {
            // If the character at right index is in the dictionary, decrement its count
            
            if let charCount = dict[sChars[right]] {
                dict[sChars[right]] = charCount - 1
                if charCount > 0 {
                    count -= 1
                }
            }
            right += 1
            
            // If count becomes 0, we have found an anagram
            if count == 0 {
                result.append(left)
            }
            
            // If the window size is equal to p's length, move the left pointer and update the dictionary
            if right - left == pChars.count {
                if let charCount = dict[sChars[left]] {
                    dict[sChars[left]] = charCount + 1
                    if charCount >= 0 {
                        count += 1
                    }
                }
                left += 1
            }
        }
        
        return result
    }
}

/*
 위에는 정답코드 아래는 내 코드
 class Solution {
     func findAnagrams(_ s: String, _ p: String) -> [Int] {
         let sArray = s.map{String($0)}
         var window = 0
         var pValue = 0
         p.map{String($0)}.forEach{
             pValue += Int(UnicodeScalar($0)!.value)
         }

         var answer: [Int] = []

         for right in 0..<s.count{
             window += Int(UnicodeScalar(sArray[right])!.value)
             if right >= p.count {
                 window -= Int(UnicodeScalar(sArray[right - p.count])!.value)
             }
             if pValue == window{
                 answer.append(right - p.count + 1)
             }
         }

         return answer
     }
 }
 
 처음에는 Unicode값으로 계산할려 했으나
 "af"
 "be"
 여기서 틀어짐
 문제 다시 풀 예정
 */
