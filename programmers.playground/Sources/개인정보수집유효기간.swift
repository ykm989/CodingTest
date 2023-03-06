// 개인정보 수집 유효기간
// 2023.03.06
// https://school.programmers.co.kr/learn/courses/30/lessons/150370

import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var termsDic : [String: Int] = [:]
    var termDay: Int = 0
    var result: [Int] = []
    
    terms.forEach{
        let term = $0.split(separator: " ")
        
        termsDic[String(term[0])] = Int(term[1])! * 28
    }
    
    for (index, value) in privacies.enumerated(){
        let valueSplit = value.split(separator: " ")
        let daySplit = valueSplit[0].split(separator: ".")
        let todaySplit = today.split(separator: ".")
        termDay = 0
        
        //print(Int(todaySplit[0]))
        termDay += (Int(todaySplit[0])! - Int(daySplit[0])!) * 12 * 28
        //print("Year : \(termDay)")
        termDay += (Int(todaySplit[1])! - Int(daySplit[1])!) * 28
        //print("month : \(termDay)")
        termDay += Int(todaySplit[2])! - Int(daySplit[2])!
        //print("day : \(termDay)")
        
        if termsDic[String(valueSplit[1])]! <= termDay{
            result.append(index + 1)
        }
    }
    
    return result
}
