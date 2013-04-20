---
layout: post
title: 국회 좌석배치의 관례?
author: echojuliett
comments: true
categories: [ko]
---

여러분은 국회의 좌석 배치에 대해서 관심을 가져본 적이 있으신가요?<br>
정치에 어느 정도 관심을 가지고 계신 분들은, 여당인 한나라당이 중앙에 위치해있고, 야당들이 그 주변에 포진해 있다는 사실을 아실 것입니다.<!-- more -->
18대 국회를 기준으로 보면 대충 아래 그림과 같은 모습을 띠고 있지요.

{% img center /images/2012-06-26-seats.jpg %}
<div class="caption">18대 국회의 정당 배치 &copy; <a href="http://blog.daum.net/bhjun/5508303" target="_blank">전병헌</a>
</div>

그런데 2011년, 그러니까 작년 말, 팀 포퐁에서는 재미있는 그림을 하나 발견했습니다.<br>
한나라당의 [이계진 의원](http://popong.com/polidic/person/19461114)이 2005년 3월에 자신의 블로그에 올린 삽화인데요, 이 그림을 보고 저희는, 좌석의 위치에 따라 국회의원들의 심정도 다를 수 있다는 사실을 알게 되었습니다. (학창시절, 수학여행 갈 때 버스의 좌석배치와 비슷한 광경이라는 생각도 들었답니다 ㅎ)</p>

{% img center /images/2012-06-26-hierarchy.jpg %}
<div class="caption">국회 자리 위치에 따른 심정 &copy; <a href="http://blog.naver.com/kjl533/20010496857" target="_blank">국회의원 이계진</a></div>

팀 포퐁에서는, 이계진 의원의 주장이 과연 사실인지를 실제 데이터를 통해 알아보기로 하고, 간단하게(?) 아래의 세 가지 step으로 진행을 했습니다.

1. 대한민국 국회 본회의장 좌석배치도 구하기
    - 국회 문서고로 연락 (02-788-2902)
    - 팩스 전송 (원래는 이메일로 파일 전송을 요청하였으나, 불가하다는 답변을 받음)
    - 군데군데에 한문이 있다는 난제를 극복하고...
2. Offline 좌석배치도를 online version으로 mapping
    - 좌석배치도를 보고 각 좌석의 좌표 정보를 본딴다.
    - 좌석배치도에 적힌 의원의 이름을 web version에 옮긴다. (이 과정 때문에 자주 업뎃하기는 힘들 것 같아요...;ㅁ;)
3. <a href="http://popong.com/polidic/" target="_blank">포퐁의 정치인명사전</a>에서 관련 의원들을 찾아 linking

그렇게 해서 얻어낸 결과물은 아래와 같습니다.

{% img center /images/2012-06-26-seats-colored.png%}
<div class="caption">당선 횟수에 따른 좌석 분포 &copy; Team POPONG</div>

어떤가요? 
**데이터 기반으로 봤을 때** 이계진 의원의 의견이 타당하다고 생각되시나요?<br>
이 포스팅에서 보여드린 결과물은 아쉽게도 web version 의 캡쳐화면인데요,
조금 더 다듬고 보강해서, 조만간 interactive infographic 형태로 보여드릴 예정입니다.

기대해주세요.<br>
Coming soon!

<hr>
`+ 20120713` 이번 주말, <a href="http://codenamu.org" target="_blank">코드나무</a>의 공공데이터캠프에 참석했더니 참석자 한 분께서 위의 내용이 이틀전에 <a href="http://article.joinsmsn.com/news/article/article.asp?total_id=8708550&amp;cloc=olink%7Carticle%7Cdefault" target="_blank">중앙일보에 기사화</a> 되었음을 알려주셨습니다. 
저희가 잘 몰랐던 사실들도 나와 있어서 많은 공부가 되었어요!

`+ 20120721`
코드나무의 공공데이터캠프에서 만들어진 위 시도의 interactive version은 [여기](http://labs.popong.com/codenamu/)에서 보실 수 있습니다.
