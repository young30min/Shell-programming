#!/bin/bash
# 팀원 이름이랑 전화번호(또는 생일)를 DB.txt에 저장

read -p "1) 이어서 추가  2) 처음부터 다시 쓰기 : " mode
if [ $mode = 2 ]; then
    > DB.txt      # 파일 내용 비우기
fi

while true; do
    read -p "이름 (그만하려면 엔터): " name
    if [ -z "$name" ]; then
        break
    fi
    read -p "전화번호 또는 생일: " info
    echo "$name $info" >> DB.txt
done

echo "--- DB.txt ---"
cat DB.txt
