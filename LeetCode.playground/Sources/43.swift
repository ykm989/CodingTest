// 43. Multiply Strings
// 2023.05.10
// https://leetcode.com/problems/multiply-strings/description/?envType=study-plan&id=level-2
// Not Record

class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        guard num1 != "0" && num2 != "0" else { return "0" }
        let num1 = num1.reversed().map { Int(String($0))! }
        let num2 = num2.reversed().map { Int(String($0))! }
        var result = Array(repeating: 0, count: num1.count + num2.count)
        for (i, n1) in num1.enumerated() {
            for (j, n2) in num2.enumerated() {
                let mult = n1 * n2
                let cur = result[j+i] + mult
                result[j+i] = cur % 10
                result[j+i+1] += cur / 10
            }
        }
        while result.last == 0 {
            result.removeLast()
        }
        return result.reversed().map { String($0) }.joined()
    }
}

/*
 어떻게 안쓰고 풀지 막막하다가 솔루션 봤다.
 index를 활용해서 각 자리를 잡아서 곱해서 더하는게 좋은 아이디어 인거 같다.
 */
