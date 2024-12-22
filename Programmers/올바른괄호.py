# 올바른 괄호
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/12909
# Not Record

def solution(s):
    pair = 0

    for i in s:
        if i == '(': pair += 1
        else: pair -= 1
        
        if pair < 0: return False
    
    return False if pair > 0 else True

'''
시간초과 해결 못해서 정답봤다. 창피하다.
보니까 난 pop으로 해줬는대 다른 사람들은 +- 연산으로 처리해서
속도차이가 난다.
'''