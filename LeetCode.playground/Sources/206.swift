// 206. Reverse Linked List
// https://leetcode.com/problems/reverse-linked-list/description/?envType=study-plan&id=level-1
// 2023.04.26
// 00:07:32

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var list : [Int] = []
        var emp = head
        var head = ListNode()
        var answer = head

        while emp != nil{
            list.append(emp!.val)
            emp = emp!.next
        }


        list.reversed().forEach{
            answer.next = ListNode($0)
            answer = answer.next!
        }

        return head.next
    }
}

/*
 내가 하는 방법은 야매로 푼 것 결과는 같지만 풀이를 보자면 틀린 풀이

 사람들 풀이를 보니 재귀를 응용 코드는 아래와 같다.
 
 class Solution {
     func reverseList(_ head: ListNode?) -> ListNode? {
         if head?.next == nil {
             return head
         }
         
         let p = reverseList(head?.next)
         head?.next?.next = head
         head?.next = nil
         
         return p
     }
 }
 
 제일 마지막 node까지 재귀로 들어간다.
 그 후 뒤에 노드를 p에 저장한 후 현재 node의 다음 노드의 next를 현재로 설정한다.
 
 
 */
