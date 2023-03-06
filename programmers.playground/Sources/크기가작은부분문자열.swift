// 크기가 작은 부분 문자열
// https://school.programmers.co.kr/learn/courses/30/lessons/147355

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    var answer = 0
    
    for index in 0...t.count - p.count
    {
        for j in 0..<p.count
        {
            if t[t.index(t.startIndex, offsetBy: index + j)] < p[p.index(p.startIndex, offsetBy: j)]
            {
                answer += 1
                break
            }
            else if t[t.index(t.startIndex, offsetBy: index + j)] > p[p.index(p.startIndex, offsetBy: j)]
            {
                break
            }
            else if j == p.count - 1 && t[t.index(t.startIndex, offsetBy: index + j)] == p[p.index(p.startIndex, offsetBy: j)]
            {
                answer += 1
                break
            }
        }
    }
    return answer
}

