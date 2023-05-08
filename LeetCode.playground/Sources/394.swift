// 394. Decode String
// 2023.05.08
// https://leetcode.com/problems/decode-string/description/?envType=study-plan&id=level-1
// Time Out

class Solution {
    func decodeString(_ s: String) -> String {
        let sArray = s.map{String($0)}
        var stack: [String] = []

        for i in sArray{
            if i != "]" {
                stack.append(i)
            } else {
                var sub = ""
                while stack.count > 0, let top = stack.popLast(), top != "["{
                    sub = top + sub
                }

                var num = ""
                while let possibleNum = stack.last, Int(possibleNum) != nil {
                    num = stack.removeLast() + num
                }
                stack.append(String(repeating: sub, count: Int(String(num)) ?? 0))
            }
        }

        return stack.joined()
    }
}

/*
 결국 내 코드로는 한계라 다른 사람의 코드를 가져왔다.
 
 위 코드 리뷰를 한 결과
 처음에는 ]가 나올때까지 쌓다가
 ]를 만나면
 [를 만날때까지 stack을 pop하여서 문자열을 모아주다가 [를 만나면
 
 숫자부분을 뽑아서 곱해서 넣는다.
 위 문제로 오늘만 2시간 썻다.
 다시 한번 풀어보자
 
 다시 한번 기존의 알고리즘을 따라 짜봤다.
 처음에 숫자를 그냥 마지막꺼 pop했다가 숫자가 10이상인걸 고려를 안했다는걸 알았다.
 그래서 그 부분을 추가하니 통과 83.19% 나쁘지 않다.
 */
