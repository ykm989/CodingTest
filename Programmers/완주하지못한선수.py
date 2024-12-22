# 완주하지 못한 선수
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/42576
# Not Record

import collections

def solution(participant, completion):
    answer = collections.Counter(participant) - collections.Counter(completion)
    return list(answer)[0]


'''
지난번처럼 풀었다. sort로 때리고
두개를 동시에 반복문 돌리면서 둘이 다른 값이 나오면
정답에 넣어주는 방식으로

그리고 다른 사람이 푸는걸 봤는대 collections를 사용해서 푸는걸 보고 감탄했다.
collections에 Counter를 사용하면 우리가 힘들게 반복문으로 만드는걸 직접 만들어주고 빼기까지 가능하다.
앞으로 이걸 자주 이용해야겠다.
'''