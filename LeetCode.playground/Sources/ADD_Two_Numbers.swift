// 2.ADD Two Numbers
// 2023.04.24
// https://leetcode.com/problems/add-two-numbers/
// Time Out 1:55

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var emp1 = l1
        var emp2 = l2

        var sum = 0

        var start = ListNode()
        var answer = start

        while emp1 != nil || emp2 != nil || sum > 0{
            if(emp1 != nil){
                sum += emp1!.val
                emp1 = emp1!.next
            }
            if(emp2 != nil){
                sum += emp2!.val
                emp2 = emp2!.next
            }

            answer.next = ListNode(sum % 10)
            sum /= 10

            answer = answer.next!
        }


        return start.next!
    }
}
