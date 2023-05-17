// 2131. Longest Palindrome by Concatenating Two Letter Words
// 2023.05.17
// https://leetcode.com/problems/longest-palindrome-by-concatenating-two-letter-words/description/
// 01:51:37

class Solution {
    func longestPalindrome(_ words: [String]) -> Int {
        var map = [String: Int]()
        for word in words {
            map[word, default: 0] += 1
        }

        var answer = 0
        var hasCentral = false

        for (word, count) in map {
            let word = Array(word)
            if word[0] == word[1] {
                if count % 2 == 0 {
                    answer += count
                } else {
                    answer += (count - 1)
                    hasCentral = true
                }
            } else if word[0] < word[1], let reversedCount = map[String(word.reversed())] {
                answer += 2 * min(count, reversedCount)
            }
        }
        if hasCentral {
            answer += 1
        }
        return answer * 2
    }
}

/*
 class Solution {
     func longestPalindrome(_ words: [String]) -> Int {
         // var wordsList = words
         var answer = 0
         var dic = [String:Int]()
         var pali = [String:Int]()
         var flag = false

         // words.forEach{
         //     dic[$0, default: 0] += 1
         // }

         for word in words{
             if word == String(word.reversed()){
                 pali[word, default:0] += 1
             } else {
                 dic[word, default: 0] += 1
                 dic[String(word.reversed()), default: 0] -= 1
             }
         }
         print(dic, pali)

         for i in dic.values where i == 0{
             answer += 2
         }

         for i in pali.values{
             if i % 2 == 0{
                 answer += i * 2
             }else {
                 flag = true
                 answer += (i - 1) * 2
             }
         }
         answer += flag ? 2 : 0
         return answer
     }
 }

 */
