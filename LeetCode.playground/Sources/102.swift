// 102. Binary Tree Level Order Traversal
// 2023.04.29
// https://leetcode.com/problems/binary-tree-level-order-traversal/description/?envType=study-plan&id=level-1
// 00:15:04
class Solution {
    var dic = [Int:[Int]]()

    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var answer = [[Int]]()
        
        if let node = root{
            dfs(node, 0)
        }
        
        return dic.sorted{$0.0 < $1.0}.map{$0.value}
    }

    func dfs(_ root: TreeNode, _ deep: Int){
        guard root != nil else {
            return
        }

        if dic[deep] == nil{
            dic[deep] = [(root.val)]
        } else {
            dic[deep]!.append((root.val))
        }

        if let left = root.left {dfs(left, deep + 1)}
        if let right = root.right {dfs(right, deep + 1)}
    }
}
