// 1046. Last Stone Weight
// 2023.05.08
// https://leetcode.com/problems/last-stone-weight/description/?envType=study-plan&id=level-1
// 00:13:32

class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var stones = stones
        while stones.count > 1{
            stones = stones.sorted(by: >)
            let y = stones.removeFirst()
            let x = stones.removeFirst()
            if y-x != 0{
                stones.append(y-x)
            }
        }
        return stones == [] ? 0 : stones[0]
    }
}

/*
 간단한 문제이다. 띄어쓰기 차이라 100%나온다.
 */
