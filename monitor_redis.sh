#! /bin/sh  
  
host_dir=`echo /home/ec2-user/`                                       # 当前用户根目录  
proc_name="redis"                             # 进程名  
pid=0  
  
proc_num()                                              # 计算进程数  
{  
    num=`ps -ef | grep $proc_name | grep -v grep | wc -l`  
    return $num  
}  
  
proc_num  
number=$?  
if [ $number -eq 0 ]                                    # 判断进程是否存在  
then   
    cd $host_dir/redis-3.2.4/; ./src/redis-server ./redis.conf &    # 重启进程的命令，请相应修改  
fi
