alembic을 쓸 때 조심할 것들

1. model들을 import해서 쓰지 말고 script 내에서 직접 Table object를 생성하라.<br>
나중에 model이 변경되거나 삭제되면 예전 script들이 import/실행에 실패하면서 헬게이트가 열림

1. 관련된 이야긴데, alembic script 외부의 의존성을 줄이기 위해, 테이블 스키마 변경만 alembic에서 처리하고 데이터 삽입/변경/삭제는 다른 방법을 사용하는 것이 좋더라.

1. Alembic의 current revision id는 `alembic_version` 테이블에 저장된다.<br>
어떤 이유로 Alembic current revision을 바꾸고 싶은 경우 사용 가능하다. 예를 들어 DB나 revision 파일을 직접 건드려서 꼬였다든지.

1. *0.6.1* 이전에는 index가 autogenerate로 추적이 안 된다.<br>
model에 `..., index=True` 추가했다고 안심하지 말고 직접 확인해 봐야 한다.

1. (PostgreSQL) `pg_stat_user_tables` 테이블을 이용해 indexed search와 sequential search가 얼마나 이루어지고 있는지 알 수 있다.<br>
만약 sequential search가 많이 발생하고 있다면 missing index가 있을 가능성이 크다.
