// 692. Top K Frequent Words
// 2023.05.08
// https://leetcode.com/study-plan/leetcode-75/?progress=xy8192bi
// 00:44:18

class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dic = [String: Int]()
        var answer = [String]()
        for i in words{
            dic[i, default:0] += 1
        }

        var dicSorted = dic.sorted{$0.value == $1.value ? $0.key < $1.key : $0.value > $1.value}
        for i in 0..<k{
            answer.append(dicSorted[i].key)
        }

        return answer
    }
}

/*
 String 자체를 비교할줄 몰랐다. count로 했는데, 이거 때문에 오답이 나왔다.
 그리고 위처럼 삼향 연산자 사용할 방법을 생각 못했다.
 그래서 sorted().sorted를 사용했는데, 이 부분을 학습하자.
 */
