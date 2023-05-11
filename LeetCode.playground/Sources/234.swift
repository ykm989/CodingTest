// 234. Palindrome Linked List
// 2023.05.11
// https://leetcode.com/problems/palindrome-linked-list/description/?envType=study-plan&id=level-2
// 08:28

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var node = head
        var list = [Int]()
        while node != nil{
            let value = node?.val
            list.append(value!)
            node = node?.next
        }
        var half = list.count / 2

        if list.suffix(half) == list.prefix(half).reversed(){
            return true
        }

        return false
    }
}
