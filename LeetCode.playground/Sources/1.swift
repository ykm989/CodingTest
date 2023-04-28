// 1. Two Sum
// 2023.04.01
// https://leetcode.com/problems/two-sum/
// Not Record

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []

        for (index,value) in nums.enumerated(){
            if let firstIndex = nums.firstIndex(of: target - value){
                if index != firstIndex{
                    result.append(index)
                    result.append(firstIndex)
                    break
                }
            }
        }

        return result.sorted()
    }
}
