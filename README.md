# 셸 프로그래밍 실습 (Ex.3 셸 스크립트 활용)

- 학번: 20263074
- 이름: 이지훈
- 환경: Ubuntu Linux, GNU bash

## 폴더 구성
```
.
├── README.md
├── doc/   보고서(셸프로그래밍(20263074,이지훈).docx)와 실행 결과 스크린샷
└── src/   셸 스크립트 ex3-0.sh ~ ex3-9.sh
```

## 실행 방법
```bash
cd src
bash ex3-0.sh            # MYENV 등록 (해제: bash ex3-0.sh unset)
bash ex3-1.sh 17 5       # 두 정수 사칙연산
bash ex3-2.sh            # y = 1/2 x^2 (실수)
bash ex3-3.sh            # 점수 -> A/B 등급
bash ex3-4.sh            # 성적 관리 메뉴
bash ex3-5.sh -l         # 시스템 상태 메뉴 + 내부 함수(ls 옵션 전달)
bash ex3-6.sh files      # 폴더 생성, 압축, 해제
bash ex3-7.sh links      # 하위 폴더 생성 + 링크
bash ex3-8.sh            # 팀원 정보 DB.txt 기록
bash ex3-9.sh Kim        # DB.txt 검색
```
