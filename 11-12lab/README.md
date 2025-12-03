# 11-12lab - ASP.NET MVC Project

## Описание
Веб-приложение для управления данными об автомобилях.

## Технологии
- ASP.NET MVC
- C#
- Entity Framework
- SQL Server LocalDB

## Запуск проекта

### 1. Предварительные требования
- Visual Studio 2019/2022
- SQL Server Express LocalDB
- .NET Framework 4.7.2 или выше

### 2. Настройка базы данных
1. Откройте SQL Server Management Studio
2. Подключитесь к `(localdb)\MSSQLLocalDB`
3. Выполните скрипты из папки `Database/`

### 3. Запуск в Visual Studio
1. Откройте `11-12lab.sln`
2. Нажмите F5 для запуска

## Структура проекта
- `Controllers/` - Контроллеры MVC
- `Models/` - Модели данных
- `Views/` - Представления Razor
- `Database/` - Скрипты базы данных

## База данных
Таблица `Cars` содержит:
- Id (первичный ключ)
- Number (номер)
- Year (год)
- Brand (марка)
- Color (цвет)
- Condition (состояние)
- OwnerName (владелец)
- Address (адрес)
- CreatedDate (дата создания)