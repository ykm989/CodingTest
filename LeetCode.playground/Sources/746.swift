// 746. Min Cost Climbing Stairs
// 2023.05.04
// https://leetcode.com/problems/min-cost-climbing-stairs/description/?envType=study-plan&id=level-1
// 00:40:29

class Solution {
    var dp = [Int:Int]()
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        dp[0] = cost[0]
        dp[1] = cost[1]

        return climb(cost.count, cost + [0])
    }

    func climb(_ step: Int, _ cost: [Int]) -> Int{
        guard step > 1, dp[step] == nil else {
            return dp[step]!
        }

        let minValue = climb(step - 1, cost) < climb(step - 2, cost) ? dp[step - 1]! : dp[step - 2]!
        dp.updateValue(minValue + cost[step], forKey: step)
        return dp[step]!
    }
}

/*
 5.48% 낮은 효율의 알고리즘이 나왔다.
 반복문을 이용해 풀면 될 꺼 같은데
 
 그래서 속도 개선을 했으나 10.27%
 class Solution {
     var dp = [Int:Int]()
     func minCostClimbingStairs(_ cost: [Int]) -> Int {
         var dp: [Int:Int] = [0:cost[0], 1:cost[1]]

         for i in 2..<cost.count{
             dp[i] = min(dp[i - 1]!, dp[i - 2]!) + cost[i]
         }

         return min(dp[cost.count - 1]!, dp[cost.count - 2]!)
     }

 }
 
 다른 사람들의 코드를 가져와봤다.
 class Solution {
     func minCostClimbingStairs(_ cost: [Int]) -> Int {
         var array = [cost[0], cost[1]]

         for i in 2..<cost.count {
             array.append(cost[i] + min(array[i - 1], array[i - 2]))
         }
         return min(array[array.count - 1], array[array.count - 2])
     }
 }
 
 보니까 딕셔너리가 아니라 array로 풀었다.
 
 내 코드도 array로 수정했는대 속도가 같다.
 코드의 줄을 줄이니까 갑자기 빨라졌다. 91.10%까지 올라갔고, dictioanry로 푼것은 44.52%이다.
 아마 큰 차이가 없다보니 기준이 흔들리는거 같다.
 class Solution {
     var dp = [Int:Int]()
     func minCostClimbingStairs(_ cost: [Int]) -> Int {
         var dp = [cost[0], cost[1]]
         for i in 2..<cost.count{
             dp.append(min(dp[i - 1], dp[i - 2]) + cost[i])
         }
         return min(dp[cost.count - 1], dp[cost.count - 2])
     }

 }
 */
