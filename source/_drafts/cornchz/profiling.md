# 배경

* 생산성을 위해 ORM 사용 - SQLAlchemy

# 문제
* expertise가 부족해서 비효율적인 코드를 자꾸 생산. 어떻게 개선할 수 있는지 모름

# 문제해결
* profiler 사용 - New Relic

# 결과
* 보니 병목들이 보인다! 문제 있는 부분을 개선하여 response time 확 감소
* SQLAlchemy optimization/tuning에 대해서도 더 잘 알게 됨
