# 카펫
# 2024.12.26
# https://school.programmers.co.kr/learn/courses/30/lessons/42842
# 13분

def solution(brown, yellow):
    answer = []
    size = brown + yellow
    
    for i in range(3, int(size ** 0.5) + 1):
        
        # 약수인지 확인
        if size % i == 0:
            height = size // i
            if brown == max([height, i]) * 2 + min([height, i]) * 2 - 4:
                return [height, i]
    
    return answer



'''
brown + yellow = 값
값 약수들의 조합을 어떻게 계산할 수 있을까?
약수들의 조합 중 (큰 값 * 2) + (작은 값 * 2) - 2 = brown 값이 나오는 조합을 뽑는다.
'''