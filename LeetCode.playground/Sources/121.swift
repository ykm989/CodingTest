// 121. Best Time to Buy and Sell Stock
// 2023.04.28
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/?envType=study-plan&id=level-1
// Time Out -> 코드 구현 실패


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var right = 1
        var profit = 0

        while right < prices.count{
            print(left, right, profit)

            if prices[left] < prices[right]{
                profit = profit < prices[right] - prices[left] ? prices[right] - prices[left] : profit
            } else {
                left = right
            }
            right += 1
        }
        return profit
    }
}

/*
 class Solution {
     func maxProfit(_ prices: [Int]) -> Int {
         var buy = 100000
         var end = 0
         var profit = 0

         while end < prices.count{
             profit = profit < prices[end] - prices[buy] ? prices[end] - prices[buy] : profit

             if buy == end || profit < prices[end] - prices[buy]{
                 end += 1
             } else if prices[buy] > prices[end]{
                 buy = end
             }

             print(profit, buy, end)
         }
         

         return profit
     }
 }
 
 이번에도 Two Pointer 알고리즘이다. 생각보다 많이 사용되는거 같은대
 Two Pointer알고리즘을 구현하지 못했다.
 구현 실패의 원인은 left를 올리는 조건을 고르지 못했기 때문이다.
 다른 코드를 봤을 때는 left >= right일때, left = right를 한다.(left를 더 작은곳으로 이동시키기 위함.)
 
 
 right는 항상 한칸씩 이동한다.

 
 */
