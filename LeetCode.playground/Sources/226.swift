// 226. Invert Binary Tree
// 2023.05.17
// https://leetcode.com/problems/invert-binary-tree/description/?envType=study-plan&id=level-2
// Not Record

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {return nil}
        (root.left, root.right) = (root.right, root.left)
        _ = invertTree(root.right)
        _ = invertTree(root.left)
        return root
    }
}
