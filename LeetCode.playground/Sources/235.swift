// 235. Lowest Common Ancestor of a Binary Search Tree
// 2023.05.03
// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/description/?envType=study-plan&id=level-1
// Time Out 01:05:51

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        let pParents = findDepth(root, q, [])
        let qParents = findDepth(root, p, [])

        var commonDepth = pParents.count < qParents.count ? pParents.count - 1 : qParents.count - 1

        if commonDepth < 0{
            return root
        }

        while pParents[commonDepth] !== qParents[commonDepth]{
            commonDepth -= 1
        }

        return pParents[commonDepth]
    }

    func findDepth(_ node: TreeNode?,_ target: TreeNode?, _ list: [TreeNode?]) -> [TreeNode?]{
        guard node != nil else {
            return list
        }

        var returnList = list
        returnList.append(node)
        if target === node{
            return returnList
        }

        if (node?.val)! > (target?.val)!{
            return findDepth(node?.left, target, returnList)
        } else {
            return findDepth(node?.right, target, returnList)
        }
    }
}

/*
 나름 LCA를 충실하게 구현할려고 노력했다.
 41.1% 나름 괜찮은 결과이다.
 */
