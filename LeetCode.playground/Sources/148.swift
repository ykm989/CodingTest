// 148. Sort List
// 2023.05.12
// https://leetcode.com/problems/sort-list/description/?envType=study-plan&id=level-2
// 01:24:25

class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil { return head }

        // get mid
        var slow = head
        var fast = head
        var prev: ListNode?
        while fast != nil {
            prev = slow
            slow = slow?.next
            fast = fast?.next?.next
        }

        prev?.next = nil

        let l1 = sortList(head)
        let l2 = sortList(slow)

        return merge(l1, l2)
    }

    func merge(_ l1: ListNode?,_ l2: ListNode?) -> ListNode? {
        let temp = ListNode(Int.min)
        var l1 = l1
        var l2 = l2
        var current: ListNode? = temp

        while l1 != nil, l2 != nil {
            if l1!.val < l2!.val {
                current?.next = l1
                l1 = l1?.next
            } else  {
                current?.next = l2
                l2 = l2?.next
            }
            current = current?.next
        }

        if l1 != nil {
            current?.next = l1
        } else if l2 != nil {
            current?.next = l2
        }
        return temp.next
    }
}

/*
 처음에 풀었던 방법은 느려서 Time Out이 걸린다.
 다른 사람들은 어떻게 푸는지 찾아봤다.
 병합정렬을 사용해서 그렇게 풀었지만
 데이터 타입떄문에 에를 너무 먹었다.
 */
