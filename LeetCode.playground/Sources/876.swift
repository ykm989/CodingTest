// 876. Middle of the Linked List
// https://leetcode.com/problems/middle-of-the-linked-list/description/?envType=study-plan&id=level-1
// 2023.04.27
// 00:03:43


class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var emp = head
        var count = 0

        while emp != nil{
            emp = emp?.next
            count += 1
        }

        count /= 2
        emp = head
        print(count)

        while count != 0{
            emp = emp?.next
            count -= 1
        }


        return emp
    }
}

/*
 다른 사람들의 솔루션 코드를 봤는대 재미있는것이 있어서 가져옴
 
 func middleNode(_ head: ListNode?) -> ListNode? {
     var slow = head
     var fast = head

     while fast?.next != nil {
         fast = fast?.next?.next
         slow = slow?.next
     }

     return slow
 }
 
 찾아보니 Runner Technique이 있었다.
 가운데를 찾는 방법 고민을 해보니
 2의 배수로 늘어나는 fast와 1씩 늘어나서 fast보다 딱 가운데 값을 유지하는 slow를 이용한다.
 그걸 응용해서 Linked List의 길이와 fast의 값이 같아지면 slow의 위치가 가운대가 된다.
 */
