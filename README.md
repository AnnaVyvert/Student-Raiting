# Немножко о запуске проекта
Что бы запустить сервер надо открыть терминал в папке server, и написать команду: npm run dev
После этого вылезет "Server started on port 8080" ,значит все хорошо и сервер работает.
Так же при поступление запросов на сервер в консоли можно увидеть какие именно запросы.

### Для того что бы парсер работал надо:

1)открыть его в Visual Studio 

2)отредактировать в классе Program 4 раза строку var cs = "Host=localhost;Port=5432;Database=rating;Username=postgres;Password=root"; ,указав данные для своего подключения к БД 

3)запустить программу ,появиться консольное окно(закрыть его) и после этого работа парсера при загрузке должна работать норм.

# Название полей для настройки
(Надо убрать когда сделаем)

Научная деятельность name="nidInput"

Учебная деятельность name="udInput"

Спортивная деятельность name="sdInput"

Культурно-творческая деятельность name="ktdInput"

Общественная деятельность name="odInput"      
