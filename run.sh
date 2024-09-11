#!/bin/bash  
  
# 确保传入了足够的参数  
if [ "$#" -ne 1 ]; then  
    echo "用法: $0 <fee-rate>"  
    exit 1  
fi  
  
# 从命令行参数中获取fee-rate的值  
fee_rate=$1  
  
# 构建命令字符串  
command="yarn cli mint -i 45ee725c2c5993b3e4d308842d87e973bf1951f5f7a804b21e4dd964ecd12d6b_0 5 --fee-rate $fee_rate"  
  
while true; do  
    # 执行命令  
    $command  
  
    # 检查命令执行状态  
    if [ $? -ne 0 ]; then  
        echo "命令执行失败，退出循环"  
        exit 1  
    fi  
  
    # 等待一段时间再次执行  
    sleep 1  
done
