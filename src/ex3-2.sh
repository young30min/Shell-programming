#!/bin/bash
# y = 1/2 * x^2 계산 (소수도 되게 bc 사용)

read -p "x 값을 띄어쓰기로 2개 이상 입력하세요: " -a x_list

for x in ${x_list[@]}; do
    y=$(echo "scale=4; 0.5 * $x * $x" | bc)
    printf "x = %s 일 때 y = %g\n" $x $y
done
