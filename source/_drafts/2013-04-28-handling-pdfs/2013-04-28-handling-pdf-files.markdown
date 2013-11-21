---
layout: post
title: "Handling PDF files"
date: 2013-04-28 17:34
comments: true
categories: 
---

### [iTextPDF](http://itextpdf.com/)
- Had problems with CJK.

### [Google Docs](http://docs.google.com/viewer) + PDFMiner
- ex: http://popong.com/~lucypark/pdf/google-docs.html

### [PDFMiner](http://itextpdf.com/)
#### [pdf2html](http://pdf2html.tabesugi.net:8080/)
- ex: http://popong.com/~lucypark/pdf/pdfminer-pdf2html.html

[김강민] [오후 4:14] PDF를 텍스트 형식으로, 최종에는 스프레드시트로 정리하려는데, 어떤 게 좋을까요?
[김강민] [오후 4:14] 뭔가 건조한 질문이라 쑥스럽네요ㅠ
[강철] [오후 4:17] 앗.. 그건 저희도 고민인 부분이라..ㅎㅎ
[김강민] [오후 4:17] 뭔가 PDF 내부의 구조화된 양식을 잘 캐치하는 라이브러리를 써야할것 같은데 ㅎㅎ
[강철] [오후 4:17] 텍스트만 추출하는 건 pdfminer라는 걸 쓰고 있긴 한데요.. https://github.com/euske/pdfminer
이게 구조를 잘 뽑아주지는 못해서요ㅎ
[강철] [오후 4:20] http://www.propublica.org/nerds/item/turning-pdfs-to-text-doc-dollars-guide
[강철] [오후 4:21] 여기서 pdf를 스프레드시트로 뽑아내는 도구를 여러 가지 실험해 본 걸로 보이네요.
[강철] [오후 4:23] (아까 소개한 pdfminer를 쓰는 이유는, 대부분 도구를 영미권 개발자들이 만들어서 한/중/영 문자가 제대로 처리가 안 되는데, pdfminer는 일본인이 만든 거라 제대로 처리되더라구요ㅎ)
[강철] [오후 4:24] 정말 제대로 하는 게 필요하면
http://itextpdf.com/ iText라는 라이브러리(추출 도구가 아닌 코드 라이브러리)가 있어서, pdf에서 추출하는 코드를 직접 구현할 수 있습니다.
[김강민] [오후 4:25] 글쿤요. 풍성한 조언 고맙습니다!
[강철] [오후 4:25] 파일 개수가 엄청 많은 게 아니라면
[강철] [오후 4:25] http://tabula.nerdpower.org/
[강철] [오후 4:25] 이게 사람이 마우스로 표 영역을 클릭해주면
[강철] [오후 4:26] 그 부분에서 표를 추출해내는 도구인데
표 추출할 때는 이게 제일 성능이 나은 듯 싶어요ㅎ
[강철] [오후 4:26] (대신 사람이 마우스로 영역을 지정해줘야 하는 단점이 있습니다)
