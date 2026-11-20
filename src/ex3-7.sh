#!/bin/bash
# 파일 5개를 만들고, 파일 이름으로 폴더를 만들어서 링크 걸기

dir=$1
mkdir -p $dir
cd $dir

for i in 0 1 2 3 4; do
    echo "file$i" > file$i.txt         # 원본 파일
    mkdir -p file$i                     # 파일 이름으로 폴더 만들기
    ln -sf ../file$i.txt file$i/file$i.txt   # 폴더 안에 링크
done
