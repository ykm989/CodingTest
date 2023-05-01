// 704. Binary Search
// 2023.05.01
// https://leetcode.com/problems/binary-search/description/?envType=study-plan&id=level-1
// invalidity

class Solution {
    func search(_ n: [Int], _ t: Int) -> Int {
        var (left,right) = (0, n.count - 1)

        while left <= right{
            let mid = (left + right) / 2

            if n[mid] == t {
                return mid
            } else {
                n[mid] < t ? (left = mid + 1) : (right = mid - 1)
            }

            
        }
        return -1

    }
}

/*
 처음에는 firstIndex를 이용했다.
 이건 잘못된거라 생각해서 다시 풀기를 시도했다.
 
 이진 탐색 알고리즘을 이용하는 문제.
 */
