// 베스트 앨범
// 2023.03.14
// https://school.programmers.co.kr/learn/courses/30/lessons/42579

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var bestAlbum : [String: [[Int]]] = [:]
    var result : [Int] = []
    
    for i in 0..<plays.count{
        if bestAlbum[genres[i]] != nil{
            bestAlbum[genres[i]]?.append([i, plays[i]])
        } else {
            bestAlbum[genres[i]] = [[i,plays[i]]]
        }
    }
    
    let albumSorted = bestAlbum.sorted {
        return $0.value.map { $0[1] }.reduce(0, +) > $1.value.map { $0[1] }.reduce(0, +)
    }
    
    for i in 0..<albumSorted.count{
        let a = albumSorted[i].value.sorted{$0[1] > $1[1]}
        
        for j in 0..<a.count{
            if j > 1{ break }
            result.append(a[j][0])
        }
    }
    
    return result
}
