---
layout: post
title: "이제 국회 회의록을 온라인으로도 보실 수 있습니다!"
date: 2014-05-27 21:57
comments: true
categories: [ko]
author: echojuliett
---

안녕하세요.
한동안 팀 소식을 [페이스북 페이지](https://www.facebook.com/teampopong)만으로 알리곤 했는데,
오늘은 정말 기쁜 소식이 있어 오랫동안 소홀했던 팀 블로그에 글을 쓰게 되었습니다.
<!-- more -->

다름 아니라
[대한민국 정치의 모든 것](http://pokr.kr)에서 기존에 제공하던
[인물](http://pokr.kr/person), [의안](http://pokr.kr/bill), [정당](http://pokr.kr/party), [지역](http://pokr.kr/region) 페이지 외에
[회의](http://pokr.kr/meeting) 페이지를 추가적으로 제공하게 되었다는 것입니다.
이는 [국회 회의록 시스템](http://likms.assembly.go.kr/record/)에서 수집된 회의록 PDF의 HTML 변환으로 만들어졌으며,
모든 세세한 과정은 팀포퐁의 다른 모든 작업과 같이 **전부 자동화**하였습니다.
원문 PDF와 변환된 HTML은 각각 아래 그림에서 보실 수 있습니다.

<center>
<a href="http://likms.assembly.go.kr/record/new/getFileDown.jsp?CONFER_NUM=044100">{% img /images/2014-05-27-pdf.png 300 %}</a>
<a href="http://pokr.kr/meeting/19325244267/dialog">{% img /images/2014-05-27-html.png 300 %}</a>
</center>

<div class="caption">가장 최근에 있었던 5월 21일자 국회 본회의 회의록 원문 PDF와 추출된 HTML 페이지</div>
<div style="text-align: center; margin: -25px 0 30px; font-size: 9pt;">(<a href="http://pokr.kr/meeting/19325244267/dialog#3">바로가기</a>)</div>

회의 페이지를 제작할 때는 다음과 같은 사항에 중점적으로 신경 썼습니다.

1. 발언, 시간, 안건이 색으로 구분될 수 있게 한다. (각각 흰색, 회색, 주황색)
1. 발언자가 [팀포퐁 데이터베이스](http://data.popong.com)에 존재하는 경우 사진과 함께 링크를 제공한다.
1. 발언자가 [팀포퐁 데이터베이스](http://data.popong.com)에 존재하지 않는 경우 각각의 발언자를 다른 색의 아이콘으로 표시한다.
1. 각각의 발언에 개별 링크를 부여해서 퍼가기 쉽게 한다.[^1]
1. 어려운 용어에 대한 이해를 쉽게 하기 위해 용어에 사전을 부착한다. (우측 이미지에 있는 검은 상자)

아직 개선할 점이 많은 온라인 회의록이지만, 이를 통해 더 많은 분들께서 국회에서 돌아가는 일을 팀포퐁의 구호대로 "**쉽고 재미있게!**" 볼 수 있을거라는 생각에 서둘러 내놓게 되었습니다.

"그러게, 여기서 이러이러한 점은 저러저러하게 개선되면 좋겠네!"

좋은 아이디어를 가지고 계신가요?
팀포퐁의 [피드백 포럼](http://teampopong.uservoice.com)에 짤막하게 남겨주시면 개발팀이 보고 답변을 드리며, 많은 "공감"을 얻는 순으로 아이디어를 반영하고 있습니다.
그 외에도, 회의록에서 엉뚱한 오류를 발견하시는 경우 [contact@popong.com](mailto://contact@popong.com)으로 제보해주시는 것은, 앞으로 온라인 회의록을 발전시키는데 직접적으로 기여하시는 방법입니다.

팀포퐁의 온라인 회의록!<br>
많이 이용하고 많이 퍼트려주세요 :)

> 회의록 페이지 제작에 대한 경험을 공유해주고 영감을 준 영국의 [SayIt](http://sayit.mysociety.org) 팀에게 깊은 감사의 인사를 드립니다 :)

[^1]: 가령 이렇게: [http://pokr.kr/meeting/19325244267/dialog#3](http://pokr.kr/meeting/19325244267/dialog#3)
