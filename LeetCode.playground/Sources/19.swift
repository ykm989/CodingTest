// 19. Remove Nth Node From End of List
// 2023.05.11
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/description/?envType=study-plan&id=level-2
// 00:12:05

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard head?.next != nil else {return nil}

        var root = head
        var node = root
        var count = root
        var list = [Int]()

        while count != nil{
            list.append(0)
            count = count?.next
        }

        guard list.count != n else {
            return root?.next
        }

        for i in 0..<list.count-n-1{
            node = node?.next
        }

        if let jumpNode = node?.next?.next{
            node?.next = jumpNode
        } else {
            node?.next = nil
        }

        return root
    }
}

/*
 무식하게 풀었지만 특별한거는 X
 */
