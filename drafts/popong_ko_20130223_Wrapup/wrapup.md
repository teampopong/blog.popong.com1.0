팀포퐁은 지난 2010년 11월에 모이기 시작하여 지금까지 많은 토의와 실험들을 진행해왔습니다. 신년부터는 팀포퐁이 진행하는 일들을  정기적으로 공유하고자 합니다. 다음은 2013년 1, 2월에 팀포퐁에서 업데이트한 내역입니다.

### 인명사전

- [대한민국 정치인명사전](http://popong.com/polidic/)의 database를 Mongo DB에서 Postgres로 migration. 
- '관련 정치인' 기능을 아래와 같이 독립적인 위젯 형태로 변경하여 어디서든 snippet을 입력할 수 있게 함. 예를 들어:

		<script src="http://popong.com/widgets/relation.js?person_id=195224" type="text/javascript"></script>
- 기존에는 한글 이름만 표기했으나, 동명이인을 구분하기 위한 장치의 일환으로 한문 이름을 병기함.
- 연도 페이지 생성 (ex: [1953년 생 국회의원](http://popong.com/polidic/year/1953))
- 브라우저 타이틀에서 중요한 정보가 앞 부분에 등장하는 것이 좋다고 생각하여 정보의 위치를 바꿈.
	- i.e., `POPONG 정치인명사전 - 진선미` -&gt; `진선미 (민주통합당), 19대 국회의원 :: POPONG 정치인명사전`
- 장기적으로는 Google Trends 위젯을 대체하기 위해 인명사전 내의 인물 페이지 별 방문 로그 수집 (현재는 사이트 레이아웃 변경 중이라 수집 중단)

### 데이터

- `data.git` 저장소를 생성하여 멤버 간 흩어져 있던 데이터 파일들을 한 군데로 집결하고, 데이터의 출처 및 수집일 등 메타데이터 정리. 차후 이를 정리하여 데이터를 공개할 예정.
- [@mazefind](http://maplestory.com)님의 [현직 국회의원 블로그/SNS 종합정리](https://docs.google.com/spreadsheet/ccc?key=0Ao-novvdf79gdExCbW9FVWg0VlBoanNQSzV1akFJR1E)에서 국회의원들의 연락처 데이터를 받음.
- 용어 통일을 위해 정치 용어 정리를 시작함 (i.e., 용어의 풀이, 영문 용어, aliases 정리).
- 한자-한글 매핑 데이터 정리 (=성씨용 + 범용).
- 한글, two-column PDF에서 텍스트를 추출하기 위한 Jython 라이브러리 생성. 그러나 부정확한 텍스트 mapping 때문에 의안 등 공문서 PDF에서 텍스트 추출시 오류 발생됨 (ex: `대안` -&gt; `눀안`).
- 정치인의 이름으로 구글링하여 검색 결과 개수를 크롤링하였으나 의미가 없는 것으로 판단하여 폐기.
	- ex: "*About 24,900,000 results (0.13 seconds)*"
	- 의원에 대한 관심도는 Twitter 등장 빈도 수, 의원 간 친밀도는 공동 발의로 대체할 수 있을 것으로 판단.
- [국내 지도 데이터](https://github.com/teampopong/southkorea-maps) 가공

### 기타

- Github site를 이용하여 차후 [개발자 문서](developers.popong.com)가 될 사이트 개설.
- 한국 정치 데이터를 해외까지 확산시키기 위해 [i18n](en.popong.com) 도입.
- [Link alternate](http://support.google.com/webmasters/bin/answer.py?hl=en&amp;answer=189077&amp;topic=2370587&amp;ctx=topic) 추가.
- Apache2에서 Nginx로 웹서버 전체 migration.
- 파일명 규칙 통일.
	- 글자는 모두 영문 소문자로 표기
	- 단어 사이는 underscore(`_`)로 연결
- [OKFnKorea](http://www.facebook.com/OKFNKorea)의 Open Data Day 행사에 참석하여 [19대 신규 등록 국회의원의 재산 현황 데이터](https://github.com/teampopong/korea-assembly-officials-property) 정리