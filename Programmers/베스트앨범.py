# 베스트앨범
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/42579
# Not Record

def solution(genres, plays):
    answer = []
    dic = {}
    for i in range(0, len(genres)):
        if genres[i] in dic:
            dic[genres[i]].append([plays[i], i])
        else:
            dic[genres[i]] = [[plays[i], i]]

    sorted_dic = sorted(dic.values(), key= lambda x: sum(i[0] for i in x), reverse = True)
    
    for value in sorted_dic:
        answer += [i[1] for i in sorted(value, key = lambda x:x[0], reverse=True)[:2]]

    return answer


'''
코드를 더 함축하지 못했다.
다른 사람들 풀이를 보니까 푸는 방식은 비슷한대 함축해서 코드를 작성했다.

굳이 조건문 없이 dic을 선언할떄도
dic = {e:[] for e in set(genres)}
해서 음악 종류별로 있는 dictionary를 만들고

for e in zip(genres, plays, range(len(plays))):
    dic[e[0]].append([e[1], e[2]])

를 이용해서 나랑 다르게 반복문을 줄였다.

조금 더 코테문제 풀다보면 나도 저런 응용이 가능할꺼같다.
'''