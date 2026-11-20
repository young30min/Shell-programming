#!/bin/bash
# 과목 점수를 입력받아서 A/B 등급 출력

read -p "과목 수를 입력하세요: " n
sum=0

for ((i = 1; i <= n; i++)); do
    read -p "$i번 과목 점수: " score

    # 0~100 아니면 다시 입력
    if [ $score -lt 0 ] || [ $score -gt 100 ]; then
        echo "0~100 사이로 다시 입력하세요."
        i=$((i - 1))
        continue
    fi

    if [ $score -ge 90 ]; then
        echo "$i번 과목: $score점 -> A"
    else
        echo "$i번 과목: $score점 -> B"
    fi
    sum=$((sum + score))
done

avg=$(echo "scale=2; $sum / $n" | bc)
echo "평균: $avg"

# bc로 비교 (90 이상이면 1)
if [ $(echo "$avg >= 90" | bc) -eq 1 ]; then
    echo "평균 등급: A"
else
    echo "평균 등급: B"
fi
