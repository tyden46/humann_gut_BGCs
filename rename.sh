for name in ./*/*.gbk
do
    cp "$name" "./$(dirname "$name")_"$(basename "$name")".gbk"
done
