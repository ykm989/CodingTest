# 모의고사
# 2024.12.26
# https://school.programmers.co.kr/learn/courses/30/lessons/42840
# 23분

from itertools import permutations

def solution(numbers):
    numbers = [i for i in numbers]
    filist = set()
    
    # 중복없는 조합 만듬
    for i in range(len(numbers)):
        filist |= set(map(int, map("".join, list(permutations(numbers, i + 1)))))
    
    filist -= set(range(0, 2))
    
    for i in range(2, int(max(filist) ** 0.5) + 1):
        filist -= set(range(i * 2, max(filist) + 1, i))

    return len(filist)

'''
중복없는 조합 만드는거까지는 좋았지만
에라토스테네스의 체를 구현할 좋은 아이디어가 떠오르지 않았는대,
고수분의 답을 보고 구현했다.
씹 고수
'''