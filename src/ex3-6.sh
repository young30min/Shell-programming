#!/bin/bash
# 폴더 확인 -> 파일 5개 만들기 -> 압축 -> 새 폴더에 압축 풀기

dir=$1

# 폴더가 없으면 만들기
if [ -d $dir ]; then
    echo "$dir 폴더가 이미 있음"
else
    mkdir $dir
    echo "$dir 폴더를 만들었음"
fi

cd $dir
for i in 0 1 2 3 4; do
    echo "file$i" > file$i.txt
done

# tar로 묶기
tar -cvf $dir.tar file*.txt

# 같은 이름의 새 폴더를 만들고 그 안에 풀기
mkdir -p $dir
tar -xvf $dir.tar -C $dir
