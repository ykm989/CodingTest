// 8. String to Integer
// 2023.04.29
// https://leetcode.com/problems/reverse-integer/submissions/941181397/
// 약 13분

class Solution {
    func reverse(_ x: Int) -> Int {
        var answer = Int(String(String(abs(x)).reversed()))!
        answer *= x < 0 ? -1 : 1

        return answer < Int32.min || answer > Int32.max ? 0 : answer
    }
}


/*
 문제는 간단하지만 Int32.min, Int32.max 키워드를 몰라서 고생을 했다.
 문제를 자세히 읽어보지 않아서 32bit넘어서면 0을 return한다는걸 못봤다.
 
 내가 한 방법은 간단하지만
 다른 사람들의 코드를 보니 반복문을 돌려
 하나씩 뒤집는것이 좀 더 빠른거같다.
 */
