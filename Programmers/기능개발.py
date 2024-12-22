# 기능개발
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/42586
# Not Record

def solution(progresses, speeds):
    answer = []
    
    a = [(100 - progresses[i]) // speeds[i] + (0 if (100 - progresses[i]) % speeds[i] == 0 else 1) for i in range(0, len(progresses))]
    
    fix = a[0]
    complete = 0
    
    for i in range(1, len(a)):
        complete += 1
        
        if fix < a[i]:
            answer.append(complete)
            complete = 0
            fix = a[i]
    
    return answer+[complete + 1]

# 하나씩 꺼내다가 앞에꺼보다 작은 숫자가 나오면 answer에 넣어주면 될꺼같다.
# 우선 작업을 하나 fix 한다.
# 해당 남은 작업일 수가 큰 게 나올때까지 complete 더한다.
# 남은 작업일수가 큰 값이 나오면 answer에 complete 값을 append해준다.
# 그러면 그 남은 작업일수로 작고 다시 반복