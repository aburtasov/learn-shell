# get_log.sh
Скрипт для сбора nginx с апи.
В `api_prod_list.txt` перечислены айпишники машин.
По умолчанию собираются с каждой тачки по 1000 строк. 
Для первичной оценки проблемы этого достаточно.


## Как запускать
Запускаем с MCS
```
/bin/bash /home/get_logs.sh /home/api-prod-list.txt

Begin to run on the hosts
in file 47 strings
End run to the hostrver: 47/47 10.10.20.237 
   2963 "GET /store/android 200 "okhttp/4.9.0"
   2278 "GET /stub_status 200 "-"
   2009 "POST /show 200 "okhttp/4.9.0"
   1844 "GET /yarus?offset=0&limit=20 200 "okhttp/4.9.0"
   1117 "GET /news/4030122 200 "Go-http-client/1.1"
   1114 "GET /coin/check-reserve 200 "okhttp/4.9.0"
   1111 "GET /video/40301 200 "Go-http-client/1.1"
   1108 "GET /user/popular 200 "Go-http-client/1.1"
   1068 "GET /subscription-feed 200 "Go-http-client/1.1"
   1024 "GET /account/type 200 "okhttp/4.9.0"
    831 "GET /user/chat-status 200 "okhttp/4.9.0"
    787 "GET /story/v2 200 "okhttp/4.9.0"
    773 "GET /event/reference/city 200 "okhttp/4.9.0"
    736 "GET /event/reference/category 200 "okhttp/4.9.0"
    659 "GET /yarus/icon 200 "okhttp/4.9.0"
    657 "GET /store/android 401 "okhttp/4.9.0"
    655 "GET /account/type 401 "okhttp/4.9.0"
    653 "GET /prepared-feed/interest?offset=0&limit=20 200 "okhttp/4.9.0"
    652 "GET /complaint 200 "okhttp/4.9.0"
    628 "GET /user 200 "okhttp/4.9.0"
    626 "POST /user/4041610/subscribe-with-feed 200 "okhttp/4.9.0"
    567 "GET /user/fcm-topic 200 "okhttp/4.9.0"
    528 "GET /event/reference/city/hash 200 "okhttp/4.9.0"
    482 "GET /coin/check-reserve 401 "okhttp/4.9.0"
    421 "POST /user/timezone 200 "okhttp/4.9.0"
    411 "GET /coin/balance 200 "okhttp/4.9.0"
    389 "GET /videofone?category=1 200 "okhttp/4.9.0"
    308 "GET /coin/balance 200 ""
    279 "GET /videofone?category=4 200 "okhttp/4.9.0"
    251 "GET /news/main?offset=0&limit=20 200 "okhttp/4.9.0"

```
На выходе в месте запуска скрипта будет создан файл logs.txt, который можно использовать для дальнейшего анализа.


### Как проанализировать файл logs.txt 
На наличие 50x-х:
```
grep '" 50' logs.txt | awk '{print $6" " $7" "$9" "$NF}'  | sort | uniq -c | sort -nr | head
```

На наличие 40x-ых
```
grep '" 40' logs.txt | awk '{print $6" " $7" "$9" "$NF}'  | sort | uniq -c | sort -nr | head
```
