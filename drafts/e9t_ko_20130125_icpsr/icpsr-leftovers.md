# 찌끄러기

## ICPSR 데이터의 이용

### Poole et al.
그 중에서 의원 데이터는 2회의 연구 프로젝트에 걸쳐 수집되었는데 (ICPSR 7428, ICPSR 7803), 첫번째 ICPSR 7428 데이터의 경우 아래와 같은 문제점들이 발견되었습니다.

1. 성이 같은 두 사람에게 같은 의원 번호가 할당된 경우 (대부분의 경우 부자관계)
2. 전혀 무관한 두 사람에게 같은 의원 번호가 할당된 경우 (각각 하원의원과 상원의원)
3. 한 사람에게 두 개의 의원 번호가 할당된 경우
 
위 문제들 때문에 ICPSR은 1980년대부터 의원 번호를 꾸준히 수정해왔고, UCSD의 정치학자 [Keith Poole](http://polisci.ucsd.edu/faculty/poole.html)과 NYU의 [Howard Rosenthal](http://politics.as.nyu.edu/object/HowardRosenthal)은 수정된 의원 번호들을 이용하여 1-112회 미의회 의원들에 대한 데이터를 공개하였습니다. [2] 이 데이터는 아래와 같이 총 8개의 변수로 구성되어 있다.

1. 의원 이름 (Long Name)
2. 의원 약칭 (Short Name)
3. 의회 번호 (Congress Number)
4. 정당 번호 ([Party Code](http://www.voteview.com/PARTY3.HTM))
5. 지역구 번호 (Congressional District Number)
6. 주 이름 (State Name)
7. ICPSR 주 번호 ([ICPSR State Code](http://www.voteview.com/state_codes_icpsr.htm))
8. ICPSR 의원 번호 (Corrected ICPSR ID Number)

4, 5, 6번은 Ken Martis의 [The Historical Atlas of Political Parties in the United States Congress](http://books.google.co.kr/books?vid=ISBN0029201705&redir_esc=y)에 기반하여 작성되었고, 7, 8번은 ICPSR에서 정의하였다.



## Korean Political Data Archive (KDPA) 제안
### 데이터 공개시 유의점
1. 데이터 버젼 명시
2.  의원번호 버젼 명시
3. 의원 기준으로 병합된 데이터, transaction data 모두 유의미함
