-- Создадание таблиц-справочников

create table [Country]
(
    [Id] int identity(1,1) not null,
    [Name] varchar(50) not null,
    [Region] varchar(50)  not null,
    primary key(Id)
)

create table [DetailBrand]
(
    [Id] int identity(1,1) not null,
    [Name] varchar(50) not null,
    primary key(Id)
)

create table [BicycleBrand]
(
    [Id] int identity(1,1) not null,
    [Name] varchar(50) not null,
    primary key(Id)
)

-- Меняем название поля в Client, чтобы все поля были в PascalCase

EXEC sp_rename 'Client.[Phone number]', 'PhoneNumber', 'COLUMN';

-- Замена типов данных

-- Имена людей
alter table [Client]
alter column [Name] varchar(100) NOT null;

alter table [Staff]
alter column [Name] varchar(100) not null;

-- Цены
alter table [Bicycle]
alter column [RentPrice] decimal(10,2) not null;

alter table [Detail]
alter column [Price] decimal(10,2) not null;

alter table [ServiceBook]
alter column [Price] decimal(10,2) not null;

-- Даты найма и увольнения
EXEC sp_rename 'Staff.[Date]', 'Date_in', 'COLUMN';
alter table [Staff]
add [Date_out] date not null;

-- Добавление сравочников в таблицы
-- Client - Country
alter table [Client]
drop column [Country];

alter table [Client]
add [CountryId] int not null;

alter table [Client]
add constraint FK_Client_Country
foreign key ([CountryId]) references [Country]([Id]);

-- Detail - DetailBrand
alter table [Detail]
drop column [Brand];

alter table [Detail]
add [BrandId] int not null;

alter table [Detail]
foreign key ([BrandId]) references [DetailBrand]([Id]);

-- Легкие правки закончились, приступаем к жести
-- Делаем связь ServiceBook и Detail - M-to-M

-- Сначала сделаем поле Id в ServiceBook
alter table [ServiceBook]
add [Id] int identity(1,1) not null;
alter table [ServiceBook]
add constraint PK_ServiceBook primary key ([Id]);

-- Создаем табличку для связи M-to-M
create table [DetailForService]
(
  [ServiceBookId] int not null,
  [DetailId] int not null,
  [Amount] int not null default 1,
  -- делаем суррогатный ключ из двух полей
  primary key([ServiceBookId], [DetailId]),

  foreign key ([ServiceBookId]) references [ServiceBook]([Id]),
  foreign key ([DetailId]) references [Detail]([Id])
);

-- колонка DetailId в ServiceBook больше не нужна, но есть связь, котороую нужно удалить
declare @fk_name NVARCHAR(128);

SELECT @fk_name = name
FROM sys.foreign_keys
WHERE parent_object_id = OBJECT_ID('ServiceBook')
AND referenced_object_id = OBJECT_ID('Detail');

IF @fk_name IS NOT NULL
BEGIN
    EXEC('ALTER TABLE [ServiceBook] DROP CONSTRAINT ' + @fk_name);
    ALTER TABLE [ServiceBook] DROP COLUMN [DetailId];
END

-- теперь надо внедрить сущность Модель Велосипеда и "вставить" ее между влосипедом и деталью
create table [BicycleModel]
(
    [Id] int identity(1,1) not null,
    [Name] varchar(100) not null,
    [BicycleBrandId] int not null,

    primary key ([Id]),
    foreign key ([BicycleBrandId]) references [BicycleBrand]([Id])
);

alter table [Bicycle]
drop column [Brand];

alter table [Bicycle]
add [ModelId] int not null;

alter table [Bicycle]
add foreign key ([ModelId]) references [BicycleModel]([Id]);

-- делаем табличку для связи Модели и Детали
create table [DetailForBicycleModel]
(
  [BicycleModelId] int not null,
  [DetailId] int not null,

  primary key ([BicycleModelId], [DetailId]),
  foreign key ([BicycleModelId]) references [BicycleModel]([Id]),
  foreign key ([DetailId]) references [Detail]([Id])
);

-- таблица DetailForBicycle больше не нужна
drop table [DetailForBicycle];