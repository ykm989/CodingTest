# 의상
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/42578
# Not Record

import collections
from functools import reduce

def solution(clothes):
    answer = 0
    
    clothes = [i[1] for i in clothes]
    clothes = collections.Counter(clothes)

    return reduce(lambda x, y: x*(y+1), clothes.values(), 1) - 1


'''
이 문제는 수학을 못해서 해맸다.
(x+1)(y+1) - 1 하면 되는건대
-1는 모두 쓰지 않는 경우를 빼야했고
+1을 하는 이유는 사용하지 않는 경우의 수도 계산해야 하기 때문이다.
하지만 람다식에서 x+1을 하지 않는 이유를 몰라서 해맸는대
생각해보니 x에는 매번 결과값에 매번 +1이 되는대 그러면 안된다.
그래서 그것을 방지하기 위해서 reduce의 마지막에 1을 init값으로 줘서
1 * y+1 로 시작함으로써 이것을 방지하는 것이였다.
많이 배웠다.
'''