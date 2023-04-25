// 724. Find Pivot Index
// 2023.04.25
// https://leetcode.com/problems/find-pivot-index/description/?envType=study-plan&id=level-1
// 00:15:19

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var total = nums.reduce(0){$0 + $1}
        var left = 0

        for (index, value) in nums.enumerated(){
            total -= value

            if total == left{
                return index
            }

            left += value
        }

        return -1
    }
}
