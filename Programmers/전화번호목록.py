# 전화번호 목록
# 2024.12.22
# https://school.programmers.co.kr/learn/courses/30/lessons/42577
# Not Record

def solution(phone_book):
    phone_book.sort()
    
    for i in range(0, len(phone_book) - 1):
        if phone_book[i+1].startswith(phone_book[i]): return False
    return True

'''
이거는 과거 풀었던 코드를 복붙했다.
도저히 못풀겠다 싶었는대 어떻게 풀었나 다시 보니
영리하게 잘 풀었던것같다. startswith는 까먹지 말고 풀어야겠다.
sort를 이용해서 비슷한걸 최대한 묶어놓고 두개만 비교하니 반복문이 여러번 돌 필요가 없다.
'''