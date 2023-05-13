// 621. Task Scheduler
// 2023.05.13
// https://leetcode.com/problems/task-scheduler/description/?envType=study-plan&id=level-2
// 00:35:40

class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        guard tasks.count > 1 else {return tasks.count}

        var dict = [Character: Int]()
        tasks.forEach { dict[$0, default: 0] += 1 }
        var sortedCounts = dict.values.sorted { $0 > $1 }

        let maxCount = sortedCounts[0]
        var numberOfMax = 1

        for i in 1..<sortedCounts.count {
            if sortedCounts[i] == maxCount {
                numberOfMax += 1
            } else {
                break
            }
        }
        return max(tasks.count, numberOfMax + (maxCount - 1) * (n + 1))
    }
}

/*
 다른 정답지를 본 것이다.
 보니까 공식이 있는듯 하다.
 */
