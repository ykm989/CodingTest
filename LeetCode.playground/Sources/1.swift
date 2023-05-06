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

/*
 다시 풀어봤다. two 포인터를 사용해볼까 하는대, 문제가 정렬된 array를 쓰지 않아서, 오답이다.
 그래서 다시 위와같은 array를 응용해볼까 했는데, 다른 사람들의 풀이를 보니 dictioanry를 사용한 사람이 있어서 그것을 사용해봤다.
 
 확실히 array를 사용하기 보다는, dictioanry의 값을 보는 읽는 것이 더 빠르다. 문제도 hashmap인거 보니 이게 맞다.
 
 class Solution {
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         var dic = [Int:Int]()

         for (index, value) in nums.enumerated(){
             if let two = dic[target - value]{
                 return [two, index]
             }
             dic.updateValue(index, forKey: value)
         }

         return []
     }
 }
 */
