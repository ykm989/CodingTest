// 844. Backspace String Compare
// 2023.05.07
// https://leetcode.com/problems/backspace-string-compare/?envType=study-plan&id=level-1
// 00:15:26초

class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var sArray = Array(s)
        var tArray = Array(t)
        var sStack = [Character]()
        var tStack = [Character]()
        for i in sArray{
            if i == "#"{
                sStack.popLast()
            } else {
                sStack.append(i)
            }
        }
        for i in tArray{
            if i == "#"{
                tStack.popLast()
            } else {
                tStack.append(i)
            }
        }
        return sStack==tStack
    }
}

/*
 특별히 어려운 부분은 없었다.
 popLast는 배열이 비어있으면 nil을 반환해서 안정적이다. 알고 있는 사실임에도 if문을 더 넣었던 것을 반성하자
 */
