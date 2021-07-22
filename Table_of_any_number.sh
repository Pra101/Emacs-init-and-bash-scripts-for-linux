#! /bin/bash

echo "Enter The Number you want to see table of:  "
read -r n
i=1
while (($i<=10))
do
	i=$((i + 1))
	table=$((i * n))
	echo "$table"
done
