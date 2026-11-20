#!/bin/bash
# MYENV 환경변수를 .bashrc에 등록하거나 지우는 스크립트
# bash ex3-0.sh       : 등록
# bash ex3-0.sh unset : 해제

if [ "$1" = "unset" ]; then
    # .bashrc에서 MYENV 줄 삭제
    sed -i '/MYENV/d' ~/.bashrc
    echo ".bashrc에서 MYENV를 지웠습니다."
else
    # 이미 있으면 또 추가하지 않음
    if grep -q "MYENV" ~/.bashrc; then
        echo "이미 등록되어 있습니다."
    else
        echo 'export MYENV="Hello Shell"' >> ~/.bashrc
        echo ".bashrc에 MYENV를 등록했습니다."
    fi
fi

echo "현재 .bashrc 내용 중 MYENV:"
grep "MYENV" ~/.bashrc || echo "(없음)"
