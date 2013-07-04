---
layout: post
title: 2013년 5, 6월 업데이트 내역
date: 2013-07-03 16:00
comments: true
categories: [ko, updates]
---

지난 두 달간, <a href="http://pokr.kr">포커(Pokr; POlitics in KoRea)</a>를 런치하기 위해 팀포퐁은 전에 없던 바쁜 시간을 보냈습니다.
여러분께서 많은 관심과 피드백을 주신 덕분에 5, 6월은 저희에게 많은 것을 경험하고 배울 수 있었던 소중한 시간이었습니다.
정말 감사드립니다^^<!-- more --><br>
저희는 지난 두 달간 이런 일을 했답니다!

### [포커(Pokr)](http://pokr.kr)

1. 정치인명사전에게 [포커(Pokr)](http://pokr.kr)라는 새 이름을 붙여줬습니다. 새 이름이 붙여진 사연은 [대한민국 정치인명사전이 포커로 다시 태어난 사연](/2013/06/29/why-pokr-became-pokr/) 포스팅을 확인해 주세요!
1. 네비게이션 기능 강화
    * 페이지와 정보 사이사이를 넘실넘실 타고 다닐 수 있게 되었습니다!
        * 같은 [학교](http://pokr.kr/search?target=people&school_id=7006431), [지역](http://pokr.kr/region/25), [의안 상태](http://pokr.kr/search?target=bills&status_id=5) 등을 기준으로 모아볼 수 있습니다.
        * 예) *의원* → *정당* → *다른 의원* → *의안* → ... 
    * 각 섹션에 [고유 URL](http://pokr.kr/person/195224#legislations) 부여
    * 페이지 계층 구조 표시[^4]<br>
        {% img /images/2013-07-03-breadcrumb.png %}
    * 모바일 지원
    * [404](http://pokr.kr/404)(페이지를 찾을 수 없습니다), 500(내부 에러) 페이지
    * 의원, 정당, 의안, 지역, 학교 [통합검색](http://pokr.kr/search?query=%EA%B2%BD%EA%B8%B0)
1. 즐겨찾는 의원 기능 임시 제거 <span class="muted">(더 업그레이드된 기능으로 다시 찾아올 예정입니다!)</span>
1. 피드백 위젯을 [Barometer](http://getbarometer.com/)에서 [Uservoice](http://teampopong.uservoice.com)로 변경[^5]
    * Barometer는 모바일 미지원과 한글 미지원이라는 단점이 있었고, Uservoice는 [공개적인 아이디어 포럼을 제공](https://teampopong.uservoice.com/forums/211529-%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4-%EC%A0%9C%EC%95%88%ED%95%98%EA%B8%B0/filters/top)한다는 장점이 있었습니다.
1. 포커봇([@Pokrbot](http://twitter.com/pokrbot))이 새로 발의된 의안을 매일매일 트윗해 드립니다!
    * 일부러 의안을 찾아나서지 않아도, 자신의 관심 의안들을 편하게 받아볼 수 있는 세상이 오고 있습니다. 포커봇은 저희가 만드는 그 변화의 작은 시작점이라고 생각합니다. 더 멋진 모습으로 발전하기 위해 여러분의 많은 사랑과 피드백을 주세요 :)
    <center>
    <blockquote class="twitter-tweet"><p>농림축산식품해양수산위원장이 &quot;어장관리법 일부개정법률안(대안)&quot;을 새로 발의하였습니다. <a href="http://t.co/8GptFCV2ms">http://t.co/8GptFCV2ms</a></p>&mdash; 포커봇 (@pokrbot) <a href="https://twitter.com/pokrbot/statuses/351937420788371456">July 2, 2013</a></blockquote>
    <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
    </center>
1. 각 페이지에 *트윗하기*, *좋아요* 버튼 추가
1. 대한민국 지도 위젯: [지역 목록 페이지](http://pokr.kr/region), 의원 거주지

#### 디자인
1. 새로운 [메인 페이지](http://pokr.kr) 및 서브메인([의원](http://pokr.kr/person), [의안](http://pokr.kr/bill), [정당](http://pokr.kr/party), [지역](http://pokr.kr/region)) 페이지
1. 1-Column 구조로 변경 
    * 미완성 기능들을 제거하는 과정에서 레이아웃도 좀 더 심플하게 바꾸기로 결정하였습니다.
    {% img center /images/2013-07-03-pokr.png 500 %}
1. 데이터를 테이블 형태로 표시
    * 데이터를 어떻게 하면 가장 눈에 들어오기 쉽게, 직관적으로 표시할 수 있을지 팀포퐁은 고민을 많이 했습니다. 
    * 모든 페이지에서 데이터를 일관적으로 테이블 형태로 표시함으로써 정보가 눈에 잘 들어오게 하였습니다.

#### 상세 페이지 개선
1. 의원 페이지
    * 19대 선거 공약 데이터 추가
    * [정당 소속/변경 기록 표시](https://www.facebook.com/photo.php?fbid=484511471625413&set=a.202832693126627.49042.187866061289957)
        * 선거 당시 출마 정당 기록만 표시되어 있으며, 임기 내 당적이 변경된 내용은 누락되어 있습니다.
1. 의안 페이지: 5월에 새로 구현
    * 의안 처리 상태에 마우스를 가져가면 상세설명 표시[^6]
        {% img /images/2013-07-02-bill-status-desc-en.png 600 %}
    * 의안 원문 PDF 링크
    * 발의자들의 정당 분포를 파이차트로 표시<br>
      예) [고용상 연령차별금지 및 고령자고용촉진에 관한 법률 일부개정법률안](http://pokr.kr/bill/1901176)

### 데이터
* 의안 크롤러[^1]
    * 의안 원문 PDF에서 텍스트 추출[^2]
    * 의안 원문에서 대표 키워드 추출[^3]
* 중복정당 처리
    * 이름이 같은, 서로 다른 정당 분리: 한나라당 ([현現 새누리당](http://pokr.kr/party/61), [전前 영남신당자유평화당](http://pokr.kr/party/195))
    * 다른 정당이라고 판단되지만, 불확실한 경우 경고 문구 표시: [청년당](http://pokr.kr/party/119) 외 다수
* 검색어 로깅 (logging)
* [2013년 상반기 보궐선거 데이터](http://info.nec.go.kr/main/showDocument.xhtml?topMenuId=CP&electionId=0020130424) 추가 반영
* 국회의원과 정당 [코드북](github.com/teampopong/codebooks) 추가
* [대한민국 헌정회](http://rokps.or.kr)에서 의원 사진 추가 수집

### 기타
* 팀 포퐁의 [프로젝트를 후원](http://popong.com/about)해 주실 수 있는 방법이 생겼습니다! ([Gittip](https://www.gittip.com/teampopong/), [Paypal](https://www.paypal.com/kr/cgi-bin/webscr?cmd=_flow&SESSION=rJ-od7Disgs4qf2n18TXe6BPX0vh0lFcQIsZ0nsDaFF_uJV_W9iKGHMBOQC&dispatch=5885d80a13c0db1f8e263663d3faee8d4e181b3aff599f99a338772351021e7d))
* [정치용어사전](http://popong.com/glossary) 구축


<br>
폴 그레이엄은 ['The other road ahead'](http://paulgraham.com/road.html)라는 에세이에서 다음과 같은 말을 했습니다.

> 비즈니스에 대해 알아야할 것은 두 가지 뿐이다: 유저들이 사랑할만한 제품을 만들고, 쓰는 돈보다 큰 돈을 벌어라. (...) 유저들이 사랑할만한 제품을 만드는 법은 다음과 같다. 먼저, 당신 스스로 사용하고 싶은 명확하고 단순한 제품을 만들어라. 그렇게 버젼 1.0은 최대한 빨리 시장에 내놓고, 유저들의 반응에 귀를 기울이면서 점차적으로 소프트웨어를 발전시키도록 해라.
> (원문: There are only two things you have to know about business: build something users love, and make more than you spend. (...) As for building something users love, here are some general tips. Start by making something clean and simple that you would want to use yourself. Get a version 1.0 out fast, then continue to improve the software, listening closely to users as you do.)

[포커](http://pokr.kr)가 베타로 세상에 나온지 약 20여 일, 아직 부족한 점이 많습니다.
아직 개선할 수 있는 부분도, 추가하고 싶은 기능도 많았습니다. 하지만 폴 그레이엄의 말처럼 저희끼리만 머리를 맞대기보다는, 이제는 실제로 서비스를 사용할 유저들이 바라고 필요로 하는 것이 무엇인지 듣고, 함께 만들어나가는 것이 필요한 시점이라고 생각해서 포커를 인큐베이터에서 서둘러 꺼냈습니다.

포커는 아직 어떤 방향으로도 성장할 수 있는, 가능성이 많은 신생아입니다. 더 멋지게 성장할 수 있도록, [많은 비판, 조언, 그리고 격려...^^](http://teampopong.uservoice.com) 부탁드리겠습니다! 포커는 여러분의 응원을 먹고 성장합니다!

[^1]: 웹사이트를 돌아다니며 내용을 자동으로 다운받는 프로그램
[^2]: [PDFminer](http://www.unixuser.org/~euske/python/pdfminer/) 사용
[^3]: [KoNLP](https://github.com/haven-jeon/KoNLP)의 명사 추출기 사용
[^4]: [Breadcrumb](http://www.smashingmagazine.com/2009/03/17/breadcrumbs-in-web-design-examples-and-best-practices-2/)이라고 합니다.
[^5]: 아직 [영문 포커](http://pokr.kr)에서는 Barometer를 사용합니다.
[^6]: **정치를 모두가 쉽게** 이해할 수 있도록 만드는 것은 팀포퐁의 중요한 철학입니다.
