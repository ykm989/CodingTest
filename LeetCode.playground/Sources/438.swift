// 438. Find All Anagrams in a String
// 2023.05.06
// https://leetcode.com/problems/find-all-anagrams-in-a-string/description/?envType=study-plan&id=level-1
// Time out 2시간 이상

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        
        var sArray = Array(s), pArray = Array(p)
        var pCount = p.count
        var answer = [Int]()
        var window = [Character:Int]()
        var right = 0, left = 0

        for i in pArray{
            window[i, default: 0] += 1
        }

        while right < sArray.count{
            if let charCount = window[sArray[right]]{
                window[sArray[right]] = charCount - 1
                if charCount > 0{
                    pCount -= 1
                }
            }
            right += 1

            if pCount == 0{
                answer.append(left)
            }

            if right - left == pArray.count{
                if let charCount = window[sArray[left]]{
                    window[sArray[left]] = charCount + 1
                    if charCount >= 0{
                        pCount += 1
                    }
                }
                left += 1
            }

        }
        return answer
    }
}

/*
 위에는 정답코드 다른 사람의 코드를 보고 내가 다시 만든 것
 재미있는 것은 p.count로 할때는 Time Out이 나왔지만 pArray.count 하니까 시간 안에 가능 즉 배열을 재는 것이 String보다 빠르다.
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
