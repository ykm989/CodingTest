# 피로도
# 2024.12.26
# https://school.programmers.co.kr/learn/courses/30/lessons/87946
# 33분

def solution(k, dungeons):
    return exploration(k, dungeons, 0)

def exploration(k, dungeons, count):
    if not dungeons:
        return count

    maxValue = count
    for i in range(len(dungeons)):
        if k >= dungeons[i][0] and 0 <= k - dungeons[i][1]:
            maxValue = max(maxValue, exploration(k - dungeons[i][1], dungeons[:i] + dungeons[i+1:], count + 1))
            
    return maxValue

'''
그리디에 대한 아이디어가 떠오르지 않아서, 완전 탐색으로 풀었다.
백트랙킹을 구현하고 싶은대 좋은 방법이 떠오르지 않아서 계산해서 아니다 싶으면 끊는 식으로
최대한 구현해봤다.
'''