// 205. Isomorphic Strings
// 2023.04.25
// https://leetcode.com/problems/isomorphic-strings/description/?envType=study-plan&id=level-1
// Time Limit Exceeded 대충 해결 시간 00:45:00

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var isomorphic = [Character: Character]()

        for i in s.indices{
            let sIndex = s[i]
            let tIndex = t[i]

            if isomorphic.keys.contains(sIndex) || isomorphic.values.contains(tIndex){
                if isomorphic[sIndex] != tIndex{return false}
            } else {
                isomorphic[sIndex] = tIndex
            }
        }

        return true
    }
}

/*
 지속적으로 Time Limit Exceeded 문제를 지속적으로 겪어서 다른 사람들의 코드를 봄
 
 class Solution {
     func isIsomorphic(_ s: String, _ t: String) -> Bool {
         var sdic = [Character:String.Index](), tdic = sdic
         for i in s.indices { // i is Index
                         
             guard sdic[s[i]] == tdic[t[i]] else { return false }
             sdic[s[i]] = i
             tdic[t[i]] = i
         }
         return true
     }
 }
 
 위 코드를 참고하여 for i in 0..<s.count -> for i in s.indices로 변경
 dictionary를 [String:String] -> [Character: Character]로 수정
 
 그 결과 시간 초과 해결
 */
