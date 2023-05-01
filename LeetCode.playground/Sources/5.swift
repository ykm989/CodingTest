// 5. Longest Palindromic Substring
// 2023.04.27
// https://leetcode.com/problems/longest-palindromic-substring/
// Time Out

class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        let input = s.map({String($0)})
        var left: Int = 0
        var right: Int = 0
        
        // [i][j]가 true라면 s의 i번째 글자부터 j번째 글자까지는 회문이다! 라는 뜻입니다.
        var isPalindrome = [[Bool]](repeating: [Bool](repeating: false, count: s.count), count: s.count)
        
        // i == right, j == left
        for i in 0..<s.count {
            for j in 0..<i {
                // 얘들 사이에 존재하는 애가 회문이거나 사이에 존재하는 글자가 한 글자인 경우엔 반드시 회문
                if input[i] == input[j] && (isPalindrome[i-1][j+1] || i - j <= 2)  {
                    isPalindrome[i][j] = true
                    // 만약 이번에 만든 회문이 기존의 회문 길이보다 작다면 초기화
                    if i - j > right - left {
                        left = j
                        right = i
                    }
                }
            }
        }


        return Array(input[left...right]).joined()
    }
}
/*
위 코드 개선 한 것
class Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {return s}
        var chars = s.map{String($0)}, answer = ""

        for i in 0..<chars.count - 1{
            if let index = chars[(i+1)...].firstIndex(of: chars[i]){
                // print(i, index)
                answer = answer.count < index - i + 1 ? chars[i...index].joined() : answer
            }
        }


        return answer == "" ? chars[0] : answer
    }
}
Error Case: "ccc", "aacabdkacaa"
 "ccc" : firstIndex -> lastIndex로 수정하였더니 "aacabdkacaa"가 에러

 class Solution {
     func longestPalindrome(_ s: String) -> String {
         guard s.count > 1 else {return s}
         var chars = s.map{String($0)}, answer = ""

         for i in 0..<chars.count - 1{
             var emp = chars[(i+1)...]
             var index = 0

             while emp.contains(chars[i]){
                 // print("\(i) : \(emp)")
                 if let firstindex = emp.firstIndex(of: chars[i]){
                     if index == emp.count - 1{
                         emp = []
                     } else {
                         emp = emp[(firstindex+1)...]
                     }
                     // print("chars[i] : \(chars[i]), emp: \(emp), \(i)...\(firstindex)")
                     if Palindromic(chars[i...firstindex].joined()){
                         // print("answer -> chars[i] : \(chars[i]), emp: \(emp), \(i)...\(firstindex) index : \(index), Bool : \(answer.count < firstindex - i + 1)")
                         answer = answer.count < firstindex - i + 1 ? chars[i...firstindex].joined() : answer
                     }
                 }
             }
         }


         return answer == "" ? chars[0] : answer
     }

     func Palindromic(_ s: String) -> Bool{
         if s == String(s.reversed()){
             return true
         } else {
             return false
         }
     }
 }

 속도를 개선했지만 실패
 
 dp를 응용하지 못했기 떄문에 긴 시간이 걸린다,.
*/
