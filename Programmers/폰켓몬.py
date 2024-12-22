# 1. Two Sum
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/1845
# Not Record

def solution(nums):
    r = len(nums) // 2
    dic = {}
    
    for i in nums:
        if i in dic:
            dic[i] += 1
        else:
            dic[i] = 1
            
    n = len(dic.keys())
    
    return n if n < r else r

'''
처음에는 중복없는 조합 공식을 함수로 구현해서 풀어봤다.
하지만 그렇게 푸니까 문제가 틀린다.
왜냐하면 중복이 있어서는 안된다는 문제가 아니라 max값을 찾는 문제이기 때문에 틀리기 때문이다.
단순하게 생각해보니 r과 n을 구해서 더 큰 값을 반환하면 되는건대 조금 어렵게 푼 것 같다.

다른 사람의 풀이를 보니 min과 set을 응용했다. 보고 배워야할 꺼 같다.
'''