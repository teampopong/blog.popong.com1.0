---
layout: post
title: 긴~~~~~ 의안 이름과 PostgreSQL text
author: cornchz
comments: true
categories: [ko, PostgreSQL]
---

<a href="http://pokr.kr">포커(Pokr)</a>가 아직 포커란 이름을 가지지 못했던 호랑이 담배피던 시절, 팀포퐁은 1대에서 19대까지 모든 의안을 수집하고 데이터베이스에 넣는 작업을 하고 있었습니다.<!-- more -->
의안 한두개 테스트해 봤을 때 아무 문제({% img /images/icon-bug.png %}) 없는 거 같아 DB에 의안을 입력시키는 스크립트를 돌려두고 맘 편히 잠자리에 들었는데... 역시 한 번에 {% img /images/icon-bug.png %} 없이 돌아가는 프로그램은 없죠...

`"대한민국 정부와 러시아연방 정부 간의 외기권의 탐색 및 평화적 목적의 이용 분야에서의 협력과 관련된 기술보호에 관한 협정 및 2006년 10월 17일의 대한민국 정부와 러시아연방 정부 간의 외기권의 탐색 및 평화적 목적의 이용 분야에서의 협력과 관련된 기술보호에 관한 협정에 관한 의정서 비준동의안"`

17대 국회에서 발의된 의안 하나가 스크립트를 깨뜨렸네요. <strike>역시 한 번에 돌아가는 프로그램은 없죠.</strike>

처음 작성된 DB 구조(Schema)에서는 의안의 이름이 길어봐야 150글자 이내일 거라고 가정하고 `Unicode(150)` 타입을 사용했는데, 무려 **166 글자**짜리 의안이 있었던 겁니다. 데이터를 먼저 탐색해 봤어야 하는데, 제 잘못이죠.
그래서 혹시 더 긴 이름이 있나 찾아봤습니다.

`"1966년7월9일서명된대한민국과아메리카합중국간의상호방위조약제4조에의한시설과구역및대한민국에서의합중국군대의지위에관한협정개정협정,1966년7월9일서명된대한민국과아메리카합중국간의상호방위조약제4조에의한시설과구역및대한민국에서의합중국군대의지위에관한협정의개정합의의사록및대한민국과아메리카합중국간의상호방위조약제4조에의한시설과구역및대한민국에서의합중국군대의지위에관한협정과관련합의의사록에관한양해사항비준동의안"`

역시나 더 긴 이름의 의안이 있네요. 띄어쓰기 없이 **214 글자**라니!
아무튼 그래서 의안 제목 필드의 길이를 얼마나 늘려줘야 하는가...

... 고민할 필요가 없습니다.

포커는 훌륭한 오픈소스 DBMS, [PostgreSQL](http://www.postgresql.org/)을 스토리지 백엔드로 사용하고 있는데, [PostgreSQL](http://www.postgresql.org/)의 문자열 타입들은 다음과 같은 특성을 가지고 있습니다.

    Tip: There is no performance difference among these three types(text, varchar, char), apart from increased storage space when using the blank-padded type, and a few extra CPU cycles to check the length when storing into a length-constrained column. While character(n) has performance advantages in some other database systems, there is no such advantage in PostgreSQL; in fact character(n) is usually the slowest of the three because of its additional storage costs. In most situations text or character varying should be used instead.

요약하면:

    text, varchar, char 타입에 성능 차이는 없다. 몇몇 DBMS에선 char가 더 빠르기도 하나 PostgreSQL에선 그렇지 않으며, 오히려 저장 공간을 많이 사용하기 때문에 대개는 더 느리곤 하다.
    그러니 text나 varchar를 쓰세요.

게다가 [PostgreSQL](http://www.postgresql.org/)의 *text* 필드는 충분히 넉넉해서(up to 1GB) 많은 경우엔 큰 고민 없이 사용해도 됩니다.
그러니 혹시나 [PostgreSQL](http://www.postgresql.org/)을 쓰시는 분이 있다면 *text* 필드를 애용하세요!

\[UPDATED 2013.11.21\]<br>
때로는 제약이 필요한 상황도 있는데, [*text*에 *CONSTRAINT*를 걸어서](http://blog.jonanin.com/2013/11/20/postgresql-char-varchar/) 사용하면 나중에 언제든 큰 코스트 없이 제약을 변경할 수 있기 때문에, 여전히 *text*가 *char(x)*나 *varchar(x)*보다 낫습니다.
