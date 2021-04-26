appid=$(ps -eaf|grep task.sh|sed '1q;d'|awk '{print$2}')
bppid=$(ps -eaf|grep task.sh|sed '2q;d'|awk '{print$2}')
cppid=$(ps -eaf|grep task.sh|sed '3q;d'|awk '{print$2}')

timeoutapid=$(ps -eaf|grep $appid|grep "timeout"|awk '{print$2}')
timeoutbpid=$(ps -eaf|grep $bppid|grep "timeout"|awk '{print$2}')
timeoutcpid=$(ps -eaf|grep $cppid|grep "timeout"|awk '{print$2}')

bashapid=$(ps -eaf|grep $timeoutapid|grep "bash"|awk '{print$2}') 
bashbpid=$(ps -eaf|grep $timeoutbpid|grep "bash"|awk '{print$2}')
bashcpid=$(ps -eaf|grep $timeoutcpid|grep "bash"|awk '{print$2}')

kill -9  $appid $bppid $cppid $bashapid $bashbpid $bashcpid
echo "success"
