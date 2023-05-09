// 54. Spiral Matrix
// 2023..05.09
// https://leetcode.com/problems/spiral-matrix/description/?envType=study-plan&id=level-2
// 01:17:21

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var answer = [Int]()
        var left = 0, up = 0, right = matrix[0].count - 1, down = matrix.count - 1

        while left <= right && up <= down{
            for i in stride(from: left, to: right + 1, by: 1){
                answer.append(matrix[up][i])
            }
            up += 1

            for i in stride(from: up, to: down + 1, by: 1){
                answer.append(matrix[i][right])
            }
            right -= 1

            if up <= down{
                for i in stride(from: right, to: left - 1, by: -1){
                    answer.append(matrix[down][i])
                }
            }
            down -= 1

            if left <= right{
                for i in stride(from: down, to: up - 1, by: -1){
                    answer.append(matrix[i][left])
                }
            }
            left += 1
        }

        return answer
    }
}

/*
 시간초과라 다른 사람들을 찾아봤다. 기존의 방식이랑 비슷하기는 하지만
 이걸 사이클로 생각했어야 했는데 x,y이동만을 고려해서 더 어려웠다.
 */
