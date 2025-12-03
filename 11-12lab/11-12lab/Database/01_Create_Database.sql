-- Создание базы данных
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'CarsDatabase')
BEGIN
    CREATE DATABASE [CarsDatabase]
    PRINT 'База данных CarsDatabase создана.'
END
GO