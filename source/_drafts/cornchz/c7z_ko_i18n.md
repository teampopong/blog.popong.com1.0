# Flask 서비스에서 다국어 지원하기

[Team POPONG](http://popong.com)은 한국어가 모국어가 아닌 사람들도 자유롭게 이용할 수 있도록 다양한 언어로 서비스를 제공하고 있습니다. (현재는 영어/한국어만 지원합니다.)

정치인명사전은 Flask 웹 프레임워크로 작성되어 있습니다. Flask는 Python으로 작성된 micro web framework로, Django같은 monolithic framework에 비해 scaffolding이 적어 간결하다는 장점이 있습니다. Flask에서 다국어 지원을 하기 가장 쉬운 방법 중 하나는 Flask-Babel을 사용하는 것입니다. Flask-Babel은 파이썬 어플리케이션의 다국어 지원을 돕는 도구 모음인 Babel을 Flask에 쉽게 적용할 수 있도록 하는 확장 기능입니다. (다국어번역기 바벨피쉬와는 이름은 비슷하지만 다른 소프트웨어입니다) Babel은 기본적으로 번역을 위해 gettext라는 Python standard library를 사용하고 있는데, 이는 GNU gettext의 Python 구현입니다.

