// 98. Validate Binary Search Tree
// 2023.05.02
// https://leetcode.com/problems/validate-binary-search-tree/description/?envType=study-plan&id=level-1
// Time Out

class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return bst(root, Int.min, Int.max)
    }

    func bst(_ node: TreeNode?, _ min: Int, _ max: Int) -> Bool{
        guard node != nil else {return true}
        let value = (node?.val)!

        if value <= min {return false}
        if value >= max {return false}
        

        return bst(node?.left, min, value) && bst(node?.right, value, max)
    }

}

/*
 이진 검색 트리문제
 처음에는 잘 풀었다 생각하지만 당장 현재 노드와 자식 노드만 비교할게 아니라 위에 노드들도 비교해야한다는걸 깨달았다.
 다른분들을 보니 min, max를 이용해서 푸는걸 보고 따라 풀었다.
 */
