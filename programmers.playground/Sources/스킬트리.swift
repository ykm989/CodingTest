// 스킬트리
// 2023.03.09
// https://school.programmers.co.kr/learn/courses/30/lessons/49993

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    
    var frontSkill : [String] = []
    var result: Int = 0
    
    for i in skill_trees{
        frontSkill = []
        
        for j in i{
            if skill.contains(j){
                frontSkill.append(String(j))
            }
        }
        
        if skill.hasPrefix(frontSkill.joined()){
            result += 1
        }
    }
    
    return result
}



/*
스택을 만들어서 스택에 있는지 확인해보는건 어떨까?
문제가 해시니까 해시로 접근하자

{
C : nil
B : C
D : BD
}

어렵게 가지말고
현재 스킬의 index를 기준으로
선행 스킬이 있는지 체크하고
그 스킬을 index를 기준으로 나눈 스킬트리 앞을 include를 이용해서 체크
swift에서는 contains 햇갈리지말자
선행에 선행은 체크할 필요가 없음
skill에 해당되는것만 따로 빼서 모아서 비교하자

*/
