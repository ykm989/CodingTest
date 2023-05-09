// 202. Happy Number
// 2023.05.09
// https://leetcode.com/problems/happy-number/description/?envType=study-plan&id=level-2
// 00:31:28

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var nString = String(n)
        var dp: [Int] = []
        var sum = 0
        while true{
            for i in nString{
                sum += i.wholeNumberValue! * i.wholeNumberValue!
            }
            nString = String(sum)
            if nString == "1" || nString == "7"{
                return true
            } else if dp.contains(sum){
                break
            }
            dp.append(sum)
            sum = 0
        }

        return false
    }
}

/*
 끊는 시점을 못골라서 해맸다.
 다른 사람들이 루프가 생성되는 시점이 알려줘서 품
 */
