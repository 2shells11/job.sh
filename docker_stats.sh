for i in `docker ps | cut -d"  " -f1| sed "1 d"`
do
    echo "+++++++stats for $i+++++++++" > dcker_stats.log
    docker stats $i >> dcker_stats.log &
done
