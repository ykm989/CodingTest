# 최소직사각형
# 2024.12.26
# https://school.programmers.co.kr/learn/courses/30/lessons/86491
# Not Record

def solution(sizes):
    return max(map(max,sizes)) * max(map(min, sizes))