// 278. First Bad Version
// 2023.05.02
// https://leetcode.com/problems/first-bad-version/submissions/?envType=study-plan&id=level-1
// 09:35

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var (l,r) = (1, n)

        while l <= r{
            let mid = (l + r) / 2
            if isBadVersion(mid) && !isBadVersion(mid - 1){
                // print(isBadVersion(mid), isBadVersion(mid - 1))
                return mid
            } else if isBadVersion(mid) {
                r = mid
            } else{
                l = mid + 1
            }
        }

        return n
    }
}

/*
 마음이 급해서 그런지 Time Limit Exceeded인대 틀렸다는 줄 알고
 이것저것 시도해봤다. Test Case에서 성공한다는걸 알았으면서도, 앞으로는 틀렸을 때 원인을 제대로 확인 해야겠다.
 
 그리고 Time Limit Exceeded가 나온 이유는 내가 제대로 된 이진 탐색 알고리즘을 이해하지 못해 left, right에 갑을 1씩 변경했기 때문이다.
 값을 변경할 때 mid + 1, mid값을 대입해주는걸 잊지말자
 */
