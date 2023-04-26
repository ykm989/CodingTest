// 206. Merge Two Sorted Lists
// 2023.04.26
// https://leetcode.com/problems/merge-two-sorted-lists/description/?envType=study-plan&id=level-1
// 00:37:46

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var emp1 = list1
        var emp2 = list2
        
        var head = ListNode()
        var answer = head
        
        var lowValue = 0

        while !(emp1 == nil && emp2 == nil){
            if emp1 == nil{
                lowValue = emp2!.val
                emp2 = emp2!.next
            }
            else if emp2 == nil{
                lowValue = emp1!.val
                emp1 = emp1!.next
            }
            else if emp1!.val > emp2!.val{
                lowValue = emp2!.val
                emp2 = emp2!.next
            } else{
                lowValue = emp1!.val
                emp1 = emp1!.next
            }

            answer.next = ListNode(lowValue)
            answer = answer.next!
        }

        return head.next
    }
}

/*
 while 문이 계속 오버되는 문제를 겪어서 논리게이트를 떠올렸다
 NAND를 구현해서 해결
 */
