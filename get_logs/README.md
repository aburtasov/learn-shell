# get_log.sh
Скрипт для сбора nginx с апи.
В `api_prod_list.txt` перечислены айпишники машин.
По умолчанию собираются с каждой тачки по 1000 строк. 
Для первичной оценки проблемы этого достаточно.


## Как запускать

```
/bin/bash /home/get_logs.sh /home/api-prod-list.txt

Begin to run on the hosts

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
