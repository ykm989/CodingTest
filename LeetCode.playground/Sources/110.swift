// 110. Balanced Binary Tree
// 2023.05.17
// https://leetcode.com/problems/balanced-binary-tree/description/
// Not Record

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        func dfs(_ node: TreeNode?, _ height: Int, _ isBalanced: inout Bool) -> Int {
            guard let node = node else {
                return height
            }
            let leftH = dfs(node.left, height + 1, &isBalanced)
            let rightH = dfs(node.right, height + 1, &isBalanced)

            if abs(leftH - rightH) > 1 {
                isBalanced = false
            }

            return max(leftH, rightH)
        }

        var isBalanced = true
        dfs(root, 0, &isBalanced)
        return isBalanced
    }
}
