#!/bin/bash
# 시스템 상태 확인 메뉴 + 함수로 ls 실행
# bash ex3-5.sh -l 처럼 옵션을 주면 ls 옵션으로 들어감

my_ls() {
    echo "함수 안으로 들어 왔음"
    ls $@        # 받은 인자를 그대로 ls 옵션으로 사용
}

echo "프로그램을 시작합니다."
my_ls $@

while true; do
    echo "========================"
    echo "1) 사용자 정보"
    echo "2) CPU 사용률 확인"
    echo "3) 메모리 사용량 확인"
    echo "4) 디스크 사용량 확인"
    echo "5) 종료"
    echo "========================"
    read -p "선택: " m

    case $m in
    1) whoami; id ;;
    2) top -b -n 1 | head -n 5 ;;   # GPU가 없어서 top으로 CPU 확인
    3) free -h ;;
    4) df -h / ;;
    5) break ;;
    *) echo "1~5 중에서 골라주세요." ;;
    esac
done
echo "프로그램을 종료합니다."
