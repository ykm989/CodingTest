// 589. N-ary Tree Preorder Traversal
// 2023.04.29
// https://leetcode.com/problems/n-ary-tree-preorder-traversal/description/?envType=study-plan&id=level-1
// 00:15:47

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        guard root != nil else {
            return []
        }

        var value = root?.val
        var answer = [value!]

        for i in (root?.children)!{
            answer += preorder(i)
        }

        return answer
    }
}

/*
 unwrapping 관련해서를 애를 먹었다
 dfs문제라 어렵지 않게 풀었다.
 */
