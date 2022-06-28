#LX 8.1 Создание HTML отчета

Выведем расширенный список процессов (ps aux) и сохранить эту информацию в файл ps.out

![image](https://user-images.githubusercontent.com/94931275/176267125-e95e2915-b933-402c-a57d-71e03a1281c3.png)

Выполним сортировку файла ps.out по имени пользователя-владельца процесса, сохранить результат в файл sorted.ps
  
![image](https://user-images.githubusercontent.com/94931275/176267184-c15090b3-b114-40a0-a74d-28fe0eb86310.png)

Разделим сортированную информацию из файла sorted.ps по нескольким файлам, в каждом файле - один ключ сортировки (например, файл root.ps - содержит строки, начинающиеся со слова root, user.ps - со слова user и т.д.)

![image](https://user-images.githubusercontent.com/94931275/176267321-f7c10431-af09-4c0a-8380-e6c0b387698d.png)

Добавим в начало каждой строки созданных файлов текст <li> (тег разметки списков языка HTML), результаты сохранить в файлах исходное_имя.html (например).

![image](https://user-images.githubusercontent.com/94931275/176267377-23605995-51c7-4a31-9e9a-66cb54f63cbe.png)

![image](https://user-images.githubusercontent.com/94931275/176267440-2e1825cf-1170-4235-81f1-95d5963b4a2d.png)

![image](https://user-images.githubusercontent.com/94931275/176267501-48bdad90-ecd9-4012-974c-b17d7404a617.png)
![image](https://user-images.githubusercontent.com/94931275/176267538-09379f61-64e5-43b4-82f5-d0bd1e4dde43.png)

Подсчитаем количество строк в каждом из полученных файлов (это значение будет соответствовать числу процессов, запущенных пользователем). Результаты объединим со строкой вида:
<p><b>Итого процессов: NN</b> где NN - количество процессов, запущенных пользователем и сохранить в отдельные файлы (например root.total, user.total и т.п).![image](https://user-images.githubusercontent.com/94931275/176267576-8a876bca-ef06-4c75-b50c-411af798b3e3.png)

![image](https://user-images.githubusercontent.com/94931275/176267743-16784ce3-522c-4478-b178-b5755d2d5286.png)

![image](https://user-images.githubusercontent.com/94931275/176267776-89180e97-7e38-41e7-af4b-0a69d384cad4.png)

  
Создадим файл index.html следующего содержания:
<html>
<title>Статистика процессов</title>
<body>
<h1>Распределение процессов по пользователям</h1>
	
Командами обработки текста последовательно добавим в файл index.html ранее созданные файлы, разделенные строкой "<hr noshade>" (например в таком порядке: файл root.html, строка-разделитель, файл root.totlal, user.html, строка-разделитель, user.total и т.д.). Завершить формирование файла добавлением строки вида:
![image](https://user-images.githubusercontent.com/94931275/176267827-17950a10-e23e-4cba-8816-59fcf97988ba.png)

![image](https://user-images.githubusercontent.com/94931275/176267920-516e8d29-d53d-4a0c-8adc-61e4ec047abe.png)
  
Просмотрим полученный файл (index.html) в веб-браузере.

![image](https://user-images.githubusercontent.com/94931275/176268080-41253890-9e5e-4b8c-acd3-5a544c6b4553.png)

Создадим скрипт, который автоматизирует проделанные операции. Назовем его proc.sh
