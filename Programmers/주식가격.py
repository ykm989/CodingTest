# 주식가격
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/42584
# Not Record

def solution(prices):
    answer = []
    
    for i in range(len(prices)):
        j = i
        for j in range(i,len(prices)):
            if prices[j] < prices[i]: break
            
        answer.append(j - i)
    return answer