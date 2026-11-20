#!/bin/bash
# 성적 관리 프로그램 (5번 누를 때까지 반복)

names=()
scores=()

while true; do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "==================="
    read -p "선택: " menu

    # 3, 4번에서 쓸 평균 미리 계산
    count=${#scores[@]}
    sum=0
    for s in ${scores[@]}; do
        sum=$((sum + s))
    done

    case $menu in
    1)
        read -p "과목 이름: " name
        read -p "점수: " score
        names+=($name)
        scores+=($score)
        echo "$name $score점 추가됨"
        ;;
    2)
        for ((i = 0; i < count; i++)); do
            echo "${names[$i]} : ${scores[$i]}점"
        done
        ;;
    3)
        if [ $count -eq 0 ]; then
            echo "입력된 점수가 없습니다."
        else
            echo "평균 점수: $(echo "scale=2; $sum / $count" | bc)"
        fi
        ;;
    4)
        if [ $count -eq 0 ]; then
            echo "입력된 점수가 없습니다."
        else
            avg=$((sum / count))   # 등급은 정수 평균으로 판단
            if   [ $avg -ge 95 ]; then echo "평균 $avg점 -> A+ (4.5)"
            elif [ $avg -ge 90 ]; then echo "평균 $avg점 -> A0 (4.0)"
            elif [ $avg -ge 85 ]; then echo "평균 $avg점 -> B+ (3.5)"
            elif [ $avg -ge 80 ]; then echo "평균 $avg점 -> B0 (3.0)"
            elif [ $avg -ge 75 ]; then echo "평균 $avg점 -> C+ (2.5)"
            elif [ $avg -ge 70 ]; then echo "평균 $avg점 -> C0 (2.0)"
            elif [ $avg -ge 60 ]; then echo "평균 $avg점 -> D (1.0)"
            else echo "평균 $avg점 -> F (0.0)"
            fi
        fi
        ;;
    5)
        echo "종료합니다."
        break
        ;;
    *)
        echo "1~5 중에서 골라주세요."
        ;;
    esac
done
