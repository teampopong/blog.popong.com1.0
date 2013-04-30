## 시맨틱 웹을 위한 한 걸음:  Microdata vs RDF

### Microdata & RDF란 무엇인가?

시맨틱 표현(Semantic annotation)은 [정의]
(ex: 마이크로데이터(Microdata), 마이크로포맷(Microformats), RDFa, ...)

<script type="text/javascript" src="//www.google.com/trends/embed.js?hl=en-US&q=microdata,+rdf,+semantic+web&cmpt=q&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"></script>

### 시맨틱 표현의 이점

1. Better search
2. Easier Web document parsing

### 그들 간의 비교
<table class='table'>
	<tr>
		<td></td>
		<td>RDFa</td>
		<td><a href="http://schema.org">Microdata</a></td>
	</tr>
	<tr>
		<td>Since</td>
		<td>
			<a href="http://www.w3.org/TR/1999/REC-rdf-syntax-19990222/">As W3C Recommendation in 1999</a>
			<br>
			<a href="">updated 2004</a>
		</td>
		<td></td>
	</tr>
	<tr>
		<td>Description</td>
		<td>Created as a standard on top of XML for encoding metadata.</td>
		<td></td>
	</tr>
	<tr>
		<td>Example</td>
		<td></td>
		<td></td>
	</tr>	
	<tr>
		<td>Graphical representation</td>
		<td>labeled, directed multi-graph</td>
		<td>tree</td>
	</tr>
	<tr>
		<td>Query language</td>
		<td>SPARQL</td>
		<td></td>
	</tr>	
	<tr>
		<td>Main contributors</td>
		<td></td>
		<td></td>
	</tr>	
</table>

### [정치 관련 서비스들](http://www.govtrack.us/developers/downstream)의 시맨틱 표현

다양한 시맨틱 표현 중 어떤 것을 선택할 것인지 고민하는 과정에서, 팀포퐁은 두 가지가 중요하다고 생각했습니다.

1. 현재 정치정보학(Political Informatics)계에서 널리 쓰이는 시맨틱 표현이 무엇인가
2. 미래에도 많이 사용될 시맨틱 표현은 무엇인가

<table class="table">
	<tr>
		<td>n</td>
		<td>Service
		<td>Type</td>
	</tr>
	<tr>
		<td>1</td>
		<td><a href="http://www.govtrack.us/data/rdf/">govtrack.us</a></td>
		<td>RDF</td>
	</tr>
</table>

http://support.google.com/webmasters/bin/answer.py?hl=en&answer=1211158
FAQ만 읽어도 전반적으로 궁금한 점이 많이 해소되는데, 그 중에 '왜 microdata를 prefer하냐?'라는 질문에 이렇게 대답하네요.

> Historically, we’ve supported three different standards for structured data markup: microdata, microformats, and RDFa. Instead of having webmasters decide between competing formats, we’ve decided to focus on just one format for schema.org. In addition, a single format will improve consistency across search engines relying on the data. There are arguments to be made for preferring any of the existing standards, but we’ve found that microdata strikes a balance between the extensibility of RDFa and the simplicity of microformats, so this is the format that we’ve gone with.
To get an overview of microdata as well as the conventions followed by schema.org, take a look at the schema.org Getting Started guide.

주욱 읽어보니 향후에도 RDFa와 microformat support는 그대로 유지하긴 할 거라고 하지만,
Google, Microsoft, Yahoo!가 함께 microdata를 밀고 있으니까, 점차 microdata의 점유율이 올라가고 결국엔 셋 모두 지원할 여력이 없는 서비스들은 microdata만 지원하게 될 거 같아요.
지금도 이미 (RDFa를 지원하는 서비스는 대개 microdata도 지원하지만,) microdata는 지원하지만 RDFa는 지원하지 않는 서비스가 많다고 하네요. 아무래도 format 자체의 복잡도 측면도 클 거 같구요.
우리가 사용하기도 쉽다는 장점도 고려하면, 제 생각엔 지금 우리가 어차피 새로 도입할 거라면 microdata가 the way to go가 아닐까 싶네요ㅎ
다른 의견도 환영! just FYI.

### References
[^1] Google Support, Rich snippets (microdata, microformats, RDFa, and Data Highlighter), [http://support.google.com/webmasters/bin/answer.py?hl=en&answer=99170](http://support.google.com/webmasters/bin/answer.py?hl=en&answer=99170)<br>
[^2] R-Bloggers, SPARQL with R in less than 5 minutes
January 23, 2013, [http://www.r-bloggers.com/sparql-with-r-in-less-than-5-minutes](http://www.r-bloggers.com/sparql-with-r-in-less-than-5-minutes)