# 모의고사
# 2024.12.26
# https://school.programmers.co.kr/learn/courses/30/lessons/42840
# 23분

def solution(answers):
    answer = [0, 0, 0]
    onesupo = [1, 2, 3, 4, 5]
    twosupo = [2, 1, 2, 3, 2, 4, 2, 5]
    thesupo = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    for i in range(0,len(answers)):
        if onesupo[i % 5] == answers[i]: answer[0] += 1
        if twosupo[i % 8] == answers[i]: answer[1] += 1
        if thesupo[i % 10] == answers[i]: answer[2] += 1

    return list(map(lambda i: i[0] + 1, filter(lambda x: x[1] == max(answer), enumerate(answer))))

'''
복잡하게 풀려고 했다가 오히려 시간 손해를 봤다.
단순하게 푸는것도 방법이다.
'''