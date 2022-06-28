LX7.2 Работа с CRON

Пишем пустой скрипт с расширением .sh и запускаем его. Скрипт - это простой текстовый файл, в первой строке которого содержится шебанг: #!/usr/bin/bash
Делаем так, чтобы скрипт инициализировал DATE и записывал туда значение времени, затем выводил на экран
Делаем так, чтобы скрипт можно было запускать без указания пути
Делаем так, чтобы вместо вывода на экран создавался файл в директории подобный /tmp/14-05-01.txt
Делаем так, чтобы в файл записывалось время создания

![image](https://user-images.githubusercontent.com/94931275/176261518-959454d6-318b-4e2d-99e9-c7a59a6dc3e2.png)

Используя CRON, заставляем скрипт исполняться ежеминутно

![image](https://user-images.githubusercontent.com/94931275/176261760-5baedce4-d9da-45ea-980d-bd686f43d65e.png)
 
![image](https://user-images.githubusercontent.com/94931275/176261901-16aae710-5e1b-44ef-8bce-f27db687edb2.png)

![image](https://user-images.githubusercontent.com/94931275/176262000-51c0430b-d2b0-488a-99db-078b72161958.png)


Используя find делаем так, чтобы директория проверялась раз в 10 минут и удаляла файлы, созданные больше, чем 17 минут назад

![image](https://user-images.githubusercontent.com/94931275/176262586-fdc34015-94d6-42a3-95aa-bae4bc2c1a67.png)

![image](https://user-images.githubusercontent.com/94931275/176262930-74959a28-6959-47b4-9ab5-62cc62a2f8db.png)

Через 10 минут проверяем, чтобы в директории было столько же файлов, сколько прошло минут:

![image](https://user-images.githubusercontent.com/94931275/176263047-7ec70b6d-6971-46a7-8db1-f39ec5867f43.png)

Дополнительные задания.

После выполнения работы просмотрите системный журнал и найдите в нем (автоматически) записи, соответствующие выполнению вашего скрипта.

![image](https://user-images.githubusercontent.com/94931275/176263560-51e37268-7b75-41b1-9d9f-dcd8b9ab0e2e.png)

![image](https://user-images.githubusercontent.com/94931275/176263663-beaec8ff-599c-41b0-b252-259cedcacf4d.png)

Подсчитайте количество запусков.

![image](https://user-images.githubusercontent.com/94931275/176263812-23760853-b31d-4ad4-9e15-5ca22fe654ab.png)
 


 

 

