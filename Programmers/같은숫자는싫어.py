# 같은 숫자는 싫어
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/12906
# Not Record

def solution(arr):
    pre = arr.pop()
    answer = [pre]
    
    while(arr):
        value = arr.pop()
        if pre != value:
            pre = value
            answer.append(value)
            
    return list(reversed(answer))


# 꺼낸 값이 앞에 값이랑 같으면 버린다.
# 꺼낸 값이 앞에 값이라 다르면 넣는다.