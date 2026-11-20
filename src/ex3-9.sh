#!/bin/bash
# DB.txt에서 이름으로 검색

if [ $# -eq 0 ]; then
    echo "사용법: $0 이름"
    exit 1
fi

# grep으로 찾고, 없으면 메시지 출력
grep -i $1 DB.txt || echo "$1 은(는) 없습니다."
