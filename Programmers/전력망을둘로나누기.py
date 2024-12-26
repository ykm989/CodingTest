# 전력망을 둘로 나누기
# 2024.12.26
# https://school.programmers.co.kr/learn/courses/30/lessons/86971
# 1시간 21분

from collections import defaultdict, deque

def solution(n, wires):
    answer = len(wires)
    connection = {}
    
    for i in range(1, n + 1):
        connection[i] = []
        
    for i in wires:
        connection[i[0]].append(i[1])
        connection[i[1]].append(i[0])
    
    for wire in wires:
        # 연결 끊기
        connection[wire[0]].remove(wire[1])
        connection[wire[1]].remove(wire[0])
        
        answer = min(answer, abs(bfs(connection, wire[0]) - bfs(connection, wire[1])))
        
        # 다시 연결
        connection[wire[0]].append(wire[1])
        connection[wire[1]].append(wire[0])
    
    return answer

def bfs(graph, startValue):
    count = 1
    visited = [startValue]
    q = deque([startValue])
    while q:
        value = q.popleft()
        for i in graph[value]:
            if i not in visited:
                count += 1
                visited.append(i)
                q.append(i)
    
    return count

'''
완전 탐색인건 알았지만, 어떻게 해야할지 막막했다.
bfs가 아직 익숙하지 않은지 구현하는대도 많이 애 먹었다.
게다가 어떻게 연결 끊은것들을 모두 탐색할지도 방법에서 많이 해맸다.
덕분에 Lv.2 문제에도 1시간반을 쏟았다.
bfs 연습좀 해야겠다.
'''