// 142. Linked List Cycle II
// 2023.04.27
// https://leetcode.com/problems/linked-list-cycle-ii/description/?envType=study-plan&id=level-1
// 00:17:22

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var rabbit = head
        var turtle = head

        while (rabbit != nil && turtle != nil && rabbit?.next != nil){
            rabbit = rabbit?.next?.next
            turtle = turtle?.next

            if rabbit === turtle{
                turtle = head
                while rabbit !== turtle{
                    rabbit = rabbit?.next
                    turtle = turtle?.next
                }
                return rabbit
            }
        }

        return nil
    }
}

/*
 폴로이드의 토끼와 거북이 알고리즘을 전 문제 876문제에서 봐서 풀었다.
 토끼와 거북이 알고리즘은 Linked List에서 Cycle이 있는지, 그리고 Cycle의 시작지점이 어디인지를 알아내는 알고리즘이다.
 방식은 Runner Technique과 비슷하다.
 turtle과 rabbit이 같은 지점에서 시작되고 둘이 만나게 된다면 cycle이 있다는것 아니라면 cycle이 존재하지 않음.
 만약 cycle이 존재한다면 turtle을 다시 root로 보내고, turtle과 rabbit을 한칸씩 이동.
 그래서 다시 rabbit과 turtle이 만나는 지점이 cycle의 시작지점이다.
 
 ==는 value를 비교
 ===는 pointer를 비교
 처음 ==를 했을때 에러가 나서
 .val값을 직접 꺼내서 하다 보니 중복된 값이 나오면 에러가 났다.
 그래서 다른사람들의 코드를 찾아보니 ===를 사용.
 ===로 수정 후 정상 동작함.
 
 알로하 부르고 싶다.
 */
