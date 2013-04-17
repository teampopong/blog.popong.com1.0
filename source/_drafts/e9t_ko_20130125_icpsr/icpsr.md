'빅데이터'가 유난히 화제입니다. 언론과 글로벌 IT 기업들이 앞다투어 데이터의 중요성을 역설하고 데이터 분석이 보편화되어 많은 사람들이 데이터를 다루는 요즘에도, 여전히 많은 데이터쟁이들은 분석하려는 데이터를 확보하고 정제하는데 많은 시간을 보내고 있습니다.

그리고 [심지어 어떤 데이터들](http://info.nec.go.kr/main/showDocument.xhtml?electionId=0000000000&topMenuId=BI&secondMenuId=BIGI)은, 뻔히 세상에 존재하는데도 그 접근성이 떨어진다는 이유로 사용되지 않습니다. 이러한 문제 의식을 가지고 [팀포퐁](http://popong.com)은 국내외의 수많은 연구자/개발자들이 편하게 사용할 수 있는 데이터 제공을 위해 노력하고 있습니다. 그 과정의 일환으로 오늘은, 오래 전부터 연구용 정치 데이터를 제공하고 있는 미국의 [ICPSR Data Archive](http://www.icpsr.umich.edu/icpsrweb/ICPSR/index.jsp)를 살펴보고자 합니다. 

### ICPSR Data Archive

ICPSR Data Archive은 University of Michigan에서 시작된 연구 단체 ICPSR(Interuniversity Consortium for Political and Social Research)의 데이터 저장소로, 경제, 교육, 정치, 군사, 환경, 보건 등 다양한 영역에 걸쳐 연구용 데이터를 제공하고 있습니다. 특히, 이 곳에서 제공하는 미의회 [의원](http://www.icpsr.umich.edu/icpsrweb/ICPSR/series/156) 및 [의안 투표](http://www.icpsr.umich.edu/icpsrweb/ICPSR/series/157) 데이터 시리즈는 미국 초대 의회부터 기록되고 있어, 이를 바탕으로 [다양한 정치학적 연구](http://www.icpsr.umich.edu/icpsrweb/ICPSR/biblio/series/156/resources?sortBy=1)되었습니다. 데이터를 요약하면 다음과 같습니다. (2013년 현재, 미국 의회는 [113대](http://en.wikipedia.org/wiki/List_of_United_States_Congresses)이며, 각 의회는 2년에 걸쳐 있습니다.)

데이터 번호 | 내용 |  기간 | 레코드/변수 개수  
-------- | --- | --- | ------------
[ICPSR-7428](http://www.icpsr.umich.edu/icpsrweb/ICPSR/series/157/studies/7428) | 의원 명단 | 1-95대 의회 <br> (1789-1978년)     | 10846개 레코드, 119개 변수
[ICPSR-7645](http://www.icpsr.umich.edu/icpsrweb/ICPSR/series/157/studies/7645) | 의안 투표 내역 | 79-97대 의회 <br> (1945-1982년)  | 상원(Senate): 393개 레코드, 753개 변수 <br>하원(House): 1826개 레코드, 802개 변수
[ICPSR-7803](http://www.icpsr.umich.edu/icpsrweb/ICPSR/series/157/studies/7803) | 의원 명단 | 1-104대 의회 <br> (1789-1996년)   | 42862개 레코드(11455명 의원), 104개의 변수

ICPSR 의원 및 의안 투표 데이터를 살펴보며, 팀포퐁은 다음과 같은 특이점들을 알게 되었습니다.

- ICPSR-7428에 '**ICPSR 의원 번호 (ICPSR member Identification number)**'를 만들어 공개했는데, 연구가 진행됨에 따라 의원 번호에 문제점이 발견되면 계속 수정하여 배포.
- ICPSR-7645의 변수가 많은 이유는 각 의회 별로 변수를 따로 두었기 때문. 가령, 97대 의회의 경우 13개의 변수를 사용하며, 전 의회 공통 변수는 8개.
- ICPSR-7803은 각 의원 별로 여러 개의 데이터 레코드가 있는 transactional data. (ex: 101대 의회부터는 의원의 임기 도중 정당만 바뀌어도 새로운 레코드 생성.)

> *Tip.* ICPSR 데이터를 다운 받을 때는 몇 가지 절차를 따라야 합니다. 국내에서는 [이 기관들](http://www.icpsr.umich.edu/icpsrweb/membership/administration/institutions/1541)에 계시는 분들이면, 기관을 통해 자유롭게 다운 받을 수 있습니다.

### ICPSR 의원 및 의안 투표 데이터가 주는 시사점

팀포퐁은 [중앙선거관리위원회 선거통계시스템](http://info.nec.go.kr/main/showDocument.xhtml?electionId=0000000000&topMenuId=BI&secondMenuId=BIGI)에서 제공하는 국회의원 선거의 후보자/당선자 데이터를 사용합니다. 선관위 데이터는 각 국회의원 선거마다 제공되기 때문에, ICPSR처럼 의원들의 집합(set)을 추출하기 위해서는 1-19대 국회 데이터의 병합이 필요합니다. 이를 위해 저희는 각 의원에게 고유 번호를 부여하고 있는데, 그 과정에서 몇 가지 어려움이 있었습니다.

1.  **이름**과 **국회 대수**를 key로 할 경우, 동명이인이 존재함. (ex: 18대 국회에는 ['김선동'](http://popong.com/polidic/person/q/%EA%B9%80%EC%84%A0%EB%8F%99)과 ['이영애'](http://popong.com/polidic/person/q/%EC%9D%B4%EC%98%81%EC%95%A0)가 각각 2명 씩 존재함.)
2. **이름**과 **생년**을 key로 할 경우, 동일인으로 추정되는 사람이 여러 번 반복적으로 등장함. (ex: ['김재순'](http://popong.com/polidic/person/q/%EA%B9%80%EC%9E%AC%EC%88%9C), ['김용호'](http://popong.com/polidic/person/q/%EA%B9%80%EC%9A%A9%ED%98%B8), ['이관형'](http://popong.com/polidic/person/q/%EC%9D%B4%EA%B4%80%ED%98%95), 
['허경구'](http://popong.com/polidic/person/q/%ED%97%88%EA%B2%BD%EA%B5%AC)가 이에 해당. 예전 국회일수록 데이터가 부정확하고, 후보자/당선자 본인이 생일을 불확실하게 알고 있기 때문이라고 추정.)

팀포퐁은 이러한 문제들을 최대한 해결한 상태에서 의원 고유 번호를 정하고, 데이터를 배포할 예정입니다. 혹시 저희에게 도움이 될 만한 아이디어나 제안이 있다면 댓글이나 [이메일](mailto:contact@popong.com)을 남겨주시면 감사하겠습니다. 

> ICPSR의 존재를 알려주신 [UCSD의 손윤규 님](http://dss.ucsd.edu/~ysohn/)께 감사드립니다.

### 참고자료

[1] Ken Martis, The Historical Atlas of Political Parties in the United States Congress, MacMillan Publishing Company, 1989. <br>
[2]   McKibbin, Carroll L.  BIOGRAPHICAL CHARACTERISTICS OF MEMBERS  OF   THE   UNITED   STATES   CONGRESS, 1789-1978 [Computer file].  Compiled by Carroll L. McKibbin, University  of  Nebraska.  3rd ICPSR ed. Ann Arbor, MI:   Inter-university  Consortium  for Political   and  Social  Research  [producer and distributor], 1979. <br>
[3] Keith Poole, "Corrected ICPSR Member ID Numbers", [http://www.voteview.com/icpsr.htm](http://www.voteview.com/icpsr.htm)