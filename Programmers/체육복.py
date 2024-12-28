# 체육복
# 2024.12.28
# https://school.programmers.co.kr/learn/courses/30/lessons/42862
# Not Record

def solution(n, lost, reserve):
    answer = 0
    
    # 모두가 가져 옴
    std = [1 for _ in range(n)]
    
    # 잃어버린 친구들
    for i in lost:
        std[i - 1] = 0
        
    # 정렬하기
    lost.sort()
    reserve.sort()
        
    # 체육복을 빌려줘(여유로 가져온 체육복)
    for i in reserve:
        #여유롭게 가져왔는데 도둑 맞음
        if i in lost:
            std[i - 1] = 1
            continue
        
        if i >= 2 and std[i - 1 - 1] == 0:
            std[i - 1 - 1] = 1
        elif i != n and std[i] == 0:
            std[i] = 1
            
    answer = std.count(1)
    
    return answer
