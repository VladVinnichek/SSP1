# 11-12lab - ASP.NET MVC Project

## Описание
Веб-приложение для управления данными об автомобилях.

## Технологии
- ASP.NET MVC
- C#
- Entity Framework Database First
- SQL Server LocalDB

## 🚀 Быстрый старт

### 1. Предварительные требования
- Visual Studio 2019/2022
- SQL Server Express LocalDB (обычно уже установлен с Visual Studio)
- .NET Framework 4.7.2 или выше

### 2. Создание базы данных вручную

#### Шаг 1 - создание Базы данных
1. Откройте проект в Visual Studio
2. Перейдите в **View → SQL Server Object Explorer** (или нажмите `Ctrl + \, Ctrl + S`)
3. Нажмите на зеленый плюсик "Add SQL Server"
4. В поле Server Name введите: `(localdb)\MSSQLLocalDB`
5. Нажмите Connect
6. В SQL Server Object Explorer разверните `(localdb)\MSSQLLocalDB`
7. Правой кнопкой на **Databases** → **Add New Database**
8. Введите имя: `CarsDatabase`
9. Нажмите OK

#### Шаг 2 - создание таблицы
1. В том же SQL Server Object Explorer
2. Правой кнопкой на `CarsDatabase` → **New Query**
3. Вставьте следующий SQL код и выполните (зеленая стрелка):

```sql
CREATE TABLE [dbo].[Cars] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Number]      NVARCHAR (20)  NOT NULL,
    [Year]        INT            NOT NULL,
    [Brand]       NVARCHAR (50)  NOT NULL,
    [Color]       NVARCHAR (30)  NULL,
    [Condition]   NVARCHAR (20)  NULL,
    [OwnerName]   NVARCHAR (100) NOT NULL,
    [Address]     NVARCHAR (200) NOT NULL,
    [CreatedDate] DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
)
```

### 3. Запуск проекта
Откройте 11-12lab.sln в Visual Studio
Обязательно необходимо пересобрать решение!!!

Нажмите F5 для запуска

Приложение автоматически подключится к базе данных

🗄️ Структура базы данных
Таблица Cars содержит следующие поля:

Id (int) - первичный ключ, автоинкремент

Number (nvarchar(20)) - номер автомобиля

Year (int) - год выпуска

Brand (nvarchar(50)) - марка автомобиля

Color (nvarchar(30)) - цвет (необязательно)

Condition (nvarchar(20)) - состояние (необязательно)

OwnerName (nvarchar(100)) - имя владельца

Address (nvarchar(200)) - адрес

CreatedDate (datetime2) - дата создания записи (автоматически)

### 🔧 Технические детали
Entity Framework
Проект использует подход Database First:

Модель: Models/CarsModel.edmx

Контекст: CarsDatabaseEntities

Строка подключения уже настроена в Web.config

Конфигурация
Фреймворк: .NET 4.7.2

Аутентификация: Windows Authentication

Сервер БД: (localdb)\MSSQLLocalDB


