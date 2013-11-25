---
layout: post
title: 2013년 7, 8, 9월 업데이트 내역
date: 2013-10-03 18:00
comments: true
categories: [ko, updates]
---

[**대한민국 정치의 모든 것**](http://pokr.kr)을 베타 오픈한지 벌써 4달, 여러분의 많은 관심과 피드백 덕분에 저희는 2달에 한 번씩 써오던 업데이트를 3달치 몰아서 써야 할 정도로 정신없는 나날들을 보냈습니다.<br><br>
팀포퐁은 지난 세 달간 이러한 일들을 했답니다 :)
<!-- more -->

## 대한민국 정치의 모든 것(Politics in Korea)
* 9월 25일 하루동안 무려 25개의 의안을 대표발의한 민주당 [윤관석 의원](http://pokr.kr/person/19601146#legislations)([@yks0817](http://twitter.com/yks0817))은 그동안 몇 개의 의안을 발의했을까요?<br>
  간단히 집계해 보니 19대 국회에서 835개의 의안을 발의한 것을 알 수 있었습니다. **그렇다면 835개는 많은 걸까요, 적은 걸까요?**<br>
  이 궁금증을 쉽게 해결할 수 있게, 회기당 의원들의 의안발의 분포와 각 의원이 분포상의 어느 곳에 위치해 있는지를 표시한 **작은 그래프**가 생겼습니다.<br>
    {% img center /images/2013-10-03-cosponsorship.png 500 %}
  <div style="text-align: center; color: #777; margin: -15px 0 20px;">윤관석 의원은 300명의 의원 중 9번째로 많은 의안을 발의했군요. (2013.10.03 기준)</div>
* 많은 분들이 사랑해 주신 [트위터 포커봇](http://twitter.com/pokrbot).<br>
  이제 **페이스북**에서도 매일매일 새로 발의된 의안들을 만나보실 수 있습니다. 이름하여 [페이스북 포커봇](https://www.facebook.com/pokrbot)!
    {% img center /images/2013-10-03-facebook-pokrbot.png 300 %}
* 의원 페이지에서 해당 의원의 **위키피디아** 페이지를 바로 열어보실 수 있습니다.
* 국회에서 pdf로 제공되는 의안 원문, 열어보기 번거로우셨죠? 그래서 이제 **대한민국 정치의 모든 것**에서는 **의안 원문을 텍스트로** 제공해 드립니다.<br>
  예) [전자서명법 전부개정법률안](http://pokr.kr/bill/1905145/text)
* 검색어 자동완성을 개선했습니다.
    * **자모음 분리 검색**<br>
      예) '돚' 또는 '도조'까지만 입력했을 때도 '도종환'이 자동완성 후보로 등장<br>
      (기존에는 정확한 음절로 구성된 '도', '도종'을 입력했을 때만 '도종환'이 자동완성)
    * **초성검색**<br>
      예) 'ㄱㅊㅎ'를 입력하면 '강창희'가 자동완성<br>
      (기존에는 초성만으로는 검색이 안 되고, 정확한 음절 ― '강', '강창' ― 을 입력했을 때만 자동완성)
    {% img center /images/2013-10-03-typeahead.png %}
  <div style="text-align: center; color: #777; margin: -15px 0 20px;">개선된 한국어 자동완성</div>
    * 이번 한국어 검색 개선에 사용된 [한글 자모음 분리 라이브러리](https://github.com/teampopong/hangul-jamo-js)도 공개합니다.
* **연관 키워드**로 의안을 검색할 수 있게 되었습니다. 따라서 의안명과 일치하지 않는 단어도 검색하실 수 있습니다.
    {% img center /images/2013-10-03-keyword.png 500 %}


## 데이터 공개
* [현직 국회의원 데이터](https://github.com/teampopong/data-assembly)가 매일 업데이트됩니다.<br>
  최신의 국회의원 데이터를 매일 다운로드 받으실 수 있고, 페이지 우측의 'History' 버튼을 클릭하면 매일 어떤 항목이 어떻게 변했는지도 보실 수 있습니다.
* 연구/서비스 개발 용도로 [19대 국회 데이터](https://github.com/teampopong/data-for-rnd)를 공개, 배포합니다.
    * 19대 국회의원 출마/당선 데이터
    * 19대 국회의 의원별 대표발의/공동발의 횟수 데이터
    * 19대 국회의원의 정당 이동 데이터
    * 19대 국회의원 후보의 공약 데이터


## 대외활동
* 팀포퐁이 [의회 개방성 선언문](http://www.openingparliament.org/declaration)을 한국어로 [번역](http://openingparliament.s3.amazonaws.com/docs/declaration/1.0/korean.pdf)하여, 대한민국이 [OpeningParliament](http://www.openingparliament.org/about)에 참여한 [75번째 국가](http://www.openingparliament.org/organizations)가 되었습니다.
* 팀포퐁이 [동아일보 지면에 소개](http://news.donga.com/3/all/20130812/56966429/1)되었습니다.
    <a href="http://news.donga.com/3/all/20130812/56966429/1">{% img center /images/2013-10-03-news.png %}</a>

팀포퐁은 내년 2월 **대한민국 정치의 모든 것**을 정식 오픈하기 위해 오늘도 열심히 달리고 있습니다.<br>
많은 분들이 의견주신 마이페이지, 시각화, API 등 다양한 기능이 차례로 공개될 예정이니 늘 곁에서 지켜봐주세요! :D
