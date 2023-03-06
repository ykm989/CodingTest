// 신고 결과 받기
// https://school.programmers.co.kr/learn/courses/30/lessons/92334

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var dic_report : [String : [String]] = [:]
    var dic_value : [String : Int] = [:]
    var dic_result : [String : Int] = [:]
    var result : [Int] = []
    
    for i in id_list{
        dic_report[i] = []
        dic_value[i] = 0
    }
    
    
    for i in report
    {
        let report_array = i.split(separator:" ").compactMap{ String($0) }
        
        if !dic_report[report_array[1]]!.contains(report_array[0]) {
            dic_report[report_array[1]]!.append(report_array[0])
        }
    }

    for (key, value) in dic_report{
        if k <= value.count{
            for i in value{
                dic_value[i]! += 1
            }
        }
    }
    
    for i in id_list{
        result.append(dic_value[i]!)
    }
    

    
    return result
}
