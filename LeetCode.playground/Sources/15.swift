// 15. 3Sum
// 2023.05.26
// https://leetcode.com/problems/3sum/description/
// 01:38:41

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 3 else {
            if nums.reduce(0, +) == 0{
                return [nums]
            } else {
                return []
            }
        }
        var numsArray = nums.sorted()
        var answer = [[Int]]()
        var one = 0, two = 0, sum = 0

        for i in 0..<numsArray.count-2{
            one = i + 1
            two = numsArray.count - 1

            while one < two{
                sum = numsArray[i] + numsArray[one] + numsArray[two]
                if sum > 0{
                    two -= 1
                } else if sum < 0{
                    one += 1
                } else {
                    answer.append([numsArray[i], numsArray[one], numsArray[two]])
                    while one < two, numsArray[one] == numsArray[one + 1]{
                        one += 1
                    }
                    while one < two, numsArray[two] == numsArray[two - 1]{
                        two -= 1
                    }
                    one += 1
                    two -= 1
                }
                
            }
        }

        return Array(Set(answer))
    }
}


/*
 two pointer 알고리즘을 처음부터 늘리는걸로 알고있었는데,
 이번꺼 같은 경우에는 two가 끝에서부터 점점 줄어야한다.
 */
