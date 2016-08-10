#!/bin/bash  
#用于配合crontab使用（crontab最小周期60秒，而要求周期小于60秒时使用），周期性执行某个事件  
#作者：xiaozou
step=5 #间隔的秒数，不能大于60  
  
for (( i = 0; i < 60; i=(i+step) )); do  
    $(sh '/var/database/syn_baotui.sh')
    $(date >> /root/hao.sh) 
    sleep $step 
done  
  
exit 0  
