// 328. Odd Even Linked List
// 2023.05.12
// https://leetcode.com/problems/odd-even-linked-list/description/?envType=study-plan&id=level-2
// 00:13:14

class Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        var oddRoot = head
        var odd = oddRoot
        var evenRoot = head?.next
        var even = evenRoot
        var node = head?.next?.next
        var flag = true
        while node != nil{
            if flag{
                odd?.next = node
                odd = odd?.next
            } else {
                even?.next = node
                even = even?.next
            }

            flag.toggle()
            node = node?.next
        }

        odd?.next = evenRoot
        even?.next = nil

        return oddRoot
    }
}

/*
 82.5% 특별한 피드백 없음
 */
