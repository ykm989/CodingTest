// 299. Bulls and Cows
// 2023.05.06
// https://leetcode.com/problems/bulls-and-cows/description/?envType=study-plan&id=level-1
// 약 1시간

class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var secretDic = [Character:Int]()
        var answerDic: [Character: Int] = ["A": 0, "B" : 0]
        var sArray = Array(secret), gArray = Array(guess)

        for i in 0..<sArray.count{
            if sArray[i] == gArray[i]{
                answerDic["A"]! += 1
            } else {
                secretDic[sArray[i], default: 0] += 1
            }
        }
        for i in 0..<gArray.count{
            if var secretValue = secretDic[gArray[i]]{
                if secretValue > 0 && sArray[i] != gArray[i]{
                    answerDic["B"]! += 1
                    secretValue -= 1
                    secretDic[gArray[i]] = secretValue
                }
            }
        }
        return "\(answerDic["A"]!)A\(answerDic["B"]!)B"
    }
}
