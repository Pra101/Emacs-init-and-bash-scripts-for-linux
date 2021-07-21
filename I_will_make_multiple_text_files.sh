#! /bin/bash
touch x.cpp
echo "Enter how many .txt files you want to prepare:"
read ct
i=1
while((i<=ct))
do
	echo "Making:: file$(($i)).txt"
	strs="file$(($i)).txt"
	touch $strs
	i=$((i+1))
done
echo "Your task is completed Byee:)"
