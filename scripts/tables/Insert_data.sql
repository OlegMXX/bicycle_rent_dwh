
INSERT INTO [Country] ([Name], [Region]) VALUES
('Россия', 'Европа'),
('Казахстан', 'Центральная Азия'),
('Беларусь', 'Европа'),
('США', 'Северная Америка');

INSERT INTO [BicycleBrand] ([Name]) VALUES
('Trek'),
('GT');

INSERT INTO [BicycleModel] ([Name], [BicycleBrandId]) VALUES
-- Trek модели
('Marlin 5', 1),
('Marlin 7', 1),
-- GT модели
('Aggressor', 2),
('Avalanche', 2);

INSERT INTO [DetailBrand] ([Name]) VALUES
('Shimano'),
('Sram');

INSERT INTO [Detail] ([Type], [Name], [Price], [BrandId]) VALUES
-- Shimano запчасти
('Цепь', 'Shimano CN-HG601', 25.50, 1),
('Кассета', 'Shimano CS-HG500', 45.00, 1),
('Манетка', 'Shimano SLX M7100', 85.00, 1),
('Тормоз', 'Shimano Deore M6120', 120.00, 1),
('Вилка', 'Shimano Sora R3000', 180.00, 1),
('Звезды', 'Shimano Deore M5100', 65.00, 1),
('Руль', 'Shimano Pro Discover', 35.00, 1),
('Седло', 'Shimano Sport Comfort', 28.00, 1),
('Обод', 'Shimano WH-RS100', 90.00, 1),
('Покрышка', 'Shimano Touring', 22.00, 1),
-- Sram запчасти
('Цепь', 'Sram PC-1130', 30.00, 2),
('Кассета', 'Sram PG-1130', 55.00, 2),
('Манетка', 'Sram GX Eagle', 110.00, 2),
('Тормоз', 'Sram Level TL', 135.00, 2),
('Вилка', 'Sram S1000 A1', 200.00, 2),
('Звезды', 'Sram X5 10-Speed', 70.00, 2),
('Руль', 'Sram 710 Flat Bar', 40.00, 2),
('Седло', 'Sram Sport Gel', 32.00, 2),
('Обод', 'Sram Roam 30', 95.00, 2),
('Покрышка', 'Sram Fast Trak', 26.00, 2);

INSERT INTO [DetailForBicycleModel] ([BicycleModelId], [DetailId]) VALUES
-- Marlin 5 совместим с Shimano
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
-- Marlin 7 совместим с Shimano и Sram
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 11), (2, 12), (2, 13), (2, 14), (2, 15),
-- Aggressor совместим с Sram
(3, 11), (3, 12), (3, 13), (3, 14), (3, 15), (3, 16), (3, 17), (3, 18), (3, 19), (3, 20),
-- Avalanche совместим с Shimano и Sram
(4, 1), (4, 2), (4, 3), (4, 4), (4, 11), (4, 12), (4, 13), (4, 14), (4, 17), (4, 18);


INSERT INTO [Staff] ([Name], [Passport], [Date_in], [Date_out]) VALUES
('Айдар Касымов', '0214 123456', '2022-05-10', '2099-12-31'),
('Гульнара Омарова', '0214 234567', '2022-08-25', '2099-12-31'),
('Бахыт Жумаев', '0214 345678', '2023-02-14', '2023-10-15'), -- уволен
('Айгуль Сапарбаева', '0214 456789', '2023-03-20', '2099-12-31'),
('Ерлан Тулегенов', '0214 567890', '2023-07-01', '2099-12-31'),
('Иван Петров', '4510 123456', '2022-03-15', '2099-12-31'),
('Мария Сидорова', '4510 234567', '2022-06-20', '2099-12-31'),
('Алексей Козлов', '4510 345678', '2022-09-10', '2023-11-30'), -- уволен
('Елена Новикова', '4510 456789', '2023-01-15', '2099-12-31'),
('Дмитрий Волков', '4510 567890', '2023-04-05', '2099-12-31');

INSERT INTO [Bicycle] ([RentPrice], [ModelId]) VALUES
-- Trek Marlin 5 (5 шт)
(15.00, 1), (15.00, 1), (15.00, 1), (15.00, 1), (15.00, 1),
-- Trek Marlin 7 (5 шт)
(20.00, 2), (20.00, 2), (20.00, 2), (20.00, 2), (20.00, 2),
-- GT Aggressor (5 шт)
(18.00, 3), (18.00, 3), (18.00, 3), (18.00, 3), (18.00, 3),
-- GT Avalanche (5 шт)
(22.00, 4), (22.00, 4), (22.00, 4), (22.00, 4), (22.00, 4);

INSERT INTO [Client] ([Name], [Passport], [PhoneNumber], [CountryId]) VALUES
('Анна Иванова', '4511 111111', '+79161111111', 1),
('Сергей Смирнов', '4511 111112', '+79161111112', 1),
('Ольга Кузнецова', '4511 111113', '+79161111113', 1),
('Павел Попов', '4511 111114', '+79161111114', 1),
('Наталья Васильева', '4511 111115', '+79161111115', 1),
('Андрей Петров', '4511 111116', '+79161111116', 1),
('Екатерина Соколова', '4511 111117', '+79161111117', 1),
('Михаил Михайлов', '4511 111118', '+79161111118', 1),
('Татьяна Новикова', '4511 111119', '+79161111119', 1),
('Александр Федоров', '4511 111120', '+79161111120', 1),
('Ирина Морозова', '4511 111121', '+79161111121', 1),
('Владимир Волков', '4511 111122', '+79161111122', 1),
('Светлана Алексеева', '4511 111123', '+79161111123', 1),
('Николай Лебедев', '4511 111124', '+79161111124', 1),
('Марина Семенова', '4511 111125', '+79161111125', 1),
('Юрий Егоров', '4511 111126', '+79161111126', 1),
('Людмила Павлова', '4511 111127', '+79161111127', 1),
('Роман Козлов', '4511 111128', '+79161111128', 1),
('Галина Степанова', '4511 111129', '+79161111129', 1),
('Артем Николаев', '4511 111130', '+79161111130', 1),
('Алия Рахметова', '0215 111111', '+77011111111', 2),
('Данияр Сагинов', '0215 111112', '+77011111112', 2),
('Жанна Темирхан', '0215 111113', '+77011111113', 2),
('Арман Жунусов', '0215 111114', '+77011111114', 2),
('Сания Искакова', '0215 111115', '+77011111115', 2),
('Ержан Калиев', '0215 111116', '+77011111116', 2),
('Айнур Баймуратова', '0215 111117', '+77011111117', 2),
('Руслан Ташенов', '0215 111118', '+77011111118', 2),
('Диана Оразбаева', '0215 111119', '+77011111119', 2),
('Канат Сулейменов', '0215 111120', '+77011111120', 2),
('Мадина Абдрахманова', '0215 111121', '+77011111121', 2),
('Бекзат Нургалиев', '0215 111122', '+77011111122', 2),
('Гулмира Сапарбаева', '0215 111123', '+77011111123', 2),
('Аслан Якубов', '0215 111124', '+77011111124', 2),
('Зарина Каирбекова', '0215 111125', '+77011111125', 2),
('Даурен Амиров', '0215 111126', '+77011111126', 2),
('Аружан Толегенова', '0215 111127', '+77011111127', 2),
('Марат Байбусинов', '0215 111128', '+77011111128', 2),
('Эльнара Жаксыбекова', '0215 111129', '+77011111129', 2),
('Тимур Садыков', '0215 111130', '+77011111130', 2),
('Дарья Ковалева', 'AB1 111111', '+375291111111', 3),
('Игорь Богданов', 'AB1 111112', '+375291111112', 3),
('Виктория Громова', 'AB1 111113', '+375291111113', 3),
('Артур Яковлев', 'AB1 111114', '+375291111114', 3),
('Кристина Зайцева', 'AB1 111115', '+375291111115', 3),
('Станислав Павлов', 'AB1 111116', '+375291111116', 3),
('Валерия Медведева', 'AB1 111117', '+375291111117', 3),
('Виталий Белов', 'AB1 111118', '+375291111118', 3),
('Алина Комарова', 'AB1 111119', '+375291111119', 3),
('Руслан Щербаков', 'AB1 111120', '+375291111120', 3),
('Джон Смит', '123456789', '+12025551111', 4),
('Эмили Джонсон', '123456790', '+12025551112', 4),
('Майкл Браун', '123456791', '+12025551113', 4),
('Сара Дэвис', '123456792', '+12025551114', 4),
('Дэвид Уилсон', '123456793', '+12025551115', 4),
('Дженнифер Миллер', '123456794', '+12025551116', 4),
('Кристофер Тейлор', '123456795', '+12025551117', 4),
('Джессика Андерсон', '123456796', '+12025551118', 4),
('Мэттью Томас', '123456797', '+12025551119', 4),
('Аманда Джексон', '123456798', '+12025551120', 4);



INSERT INTO [RentBook] ([Date], [Time], [Paid], [BicycleId], [ClientId], [StaffId]) VALUES
-- Январь 2024 аренды
('2024-01-05', 3, 1, 1, 5, 2), ('2024-01-07', 2, 1, 12, 18, 4), ('2024-01-08', 5, 1, 7, 32, 1),
('2024-01-10', 4, 1, 15, 45, 3), ('2024-01-12', 6, 1, 3, 22, 5), ('2024-01-14', 3, 1, 19, 8, 2),
('2024-01-15', 2, 1, 9, 51, 4), ('2024-01-17', 4, 1, 11, 27, 1), ('2024-01-19', 5, 1, 6, 39, 3),
('2024-01-21', 3, 1, 14, 14, 5), ('2024-01-23', 2, 1, 2, 48, 2), ('2024-01-25', 6, 1, 17, 33, 4),
('2024-01-26', 4, 1, 8, 56, 1), ('2024-01-28', 3, 1, 13, 19, 3), ('2024-01-30', 5, 1, 20, 42, 5),
-- Февраль 2024 аренды
('2024-02-02', 2, 1, 4, 11, 2), ('2024-02-04', 4, 1, 16, 54, 4), ('2024-02-06', 3, 1, 10, 25, 1),
('2024-02-08', 6, 1, 5, 37, 3), ('2024-02-10', 2, 1, 18, 59, 5), ('2024-02-11', 5, 1, 1, 16, 2),
('2024-02-13', 3, 1, 12, 44, 4), ('2024-02-15', 4, 1, 7, 28, 1), ('2024-02-17', 2, 1, 15, 52, 3),
('2024-02-19', 5, 1, 3, 35, 5), ('2024-02-21', 3, 1, 19, 9, 2), ('2024-02-23', 6, 1, 9, 47, 4),
('2024-02-25', 4, 1, 11, 21, 1), ('2024-02-27', 2, 1, 6, 58, 3), ('2024-02-28', 5, 1, 14, 31, 5),
-- Март 2024 аренды
('2024-03-01', 3, 1, 2, 13, 2), ('2024-03-03', 4, 1, 17, 46, 4), ('2024-03-05', 2, 1, 8, 29, 1),
('2024-03-07', 6, 1, 13, 53, 3), ('2024-03-09', 3, 1, 20, 17, 5), ('2024-03-11', 5, 1, 4, 41, 2),
('2024-03-13', 2, 1, 16, 60, 4), ('2024-03-15', 4, 1, 10, 23, 1), ('2024-03-17', 3, 1, 5, 55, 3),
('2024-03-19', 6, 1, 18, 38, 5), ('2024-03-21', 2, 1, 1, 12, 2), ('2024-03-23', 5, 1, 12, 49, 4),
('2024-03-25', 3, 1, 7, 26, 1), ('2024-03-27', 4, 1, 15, 57, 3), ('2024-03-29', 2, 1, 3, 34, 5),
-- Апрель 2024 аренды
('2024-04-02', 5, 1, 19, 7, 2), ('2024-04-04', 3, 1, 9, 43, 4), ('2024-04-06', 6, 1, 11, 20, 1),
('2024-04-08', 2, 1, 6, 50, 3), ('2024-04-10', 4, 1, 14, 30, 5), ('2024-04-12', 3, 1, 2, 15, 2),
('2024-04-14', 5, 1, 17, 40, 4), ('2024-04-16', 2, 1, 8, 24, 1), ('2024-04-18', 4, 1, 13, 36, 3),
('2024-04-20', 3, 1, 20, 10, 5), ('2024-04-22', 6, 1, 4, 45, 2), ('2024-04-24', 2, 1, 16, 32, 4),
('2024-04-26', 5, 1, 10, 18, 1), ('2024-04-28', 3, 1, 5, 51, 3), ('2024-04-30', 4, 1, 18, 27, 5),
-- Май 2024 аренды
('2024-05-02', 2, 1, 1, 39, 2), ('2024-05-04', 6, 1, 12, 14, 4), ('2024-05-06', 3, 1, 7, 48, 1),
('2024-05-08', 4, 1, 15, 33, 3), ('2024-05-10', 2, 1, 3, 56, 5), ('2024-05-12', 5, 1, 19, 19, 2),
('2024-05-14', 3, 1, 9, 42, 4), ('2024-05-16', 4, 1, 11, 11, 1), ('2024-05-18', 2, 1, 6, 54, 3),
('2024-05-20', 6, 1, 14, 25, 5), ('2024-05-22', 3, 1, 2, 37, 2), ('2024-05-24', 5, 1, 17, 59, 4),
('2024-05-26', 2, 1, 8, 16, 1), ('2024-05-28', 4, 1, 13, 44, 3), ('2024-05-30', 3, 1, 20, 28, 5),
-- Июнь 2024 аренды (неоплаченные)
('2024-06-01', 4, 0, 4, 52, 2), ('2024-06-03', 3, 0, 16, 35, 4), ('2024-06-05', 5, 0, 10, 9, 1),
('2024-06-07', 2, 0, 5, 47, 3), ('2024-06-09', 6, 0, 18, 21, 5), ('2024-06-11', 3, 0, 1, 58, 2),
('2024-06-13', 4, 0, 12, 31, 4), ('2024-06-15', 2, 0, 7, 13, 1), ('2024-06-17', 5, 0, 15, 46, 3),
('2024-06-19', 3, 0, 3, 29, 5), ('2024-06-21', 4, 0, 19, 53, 2), ('2024-06-23', 2, 0, 9, 17, 4),
('2024-06-25', 6, 0, 11, 41, 1), ('2024-06-27', 3, 0, 6, 60, 3), ('2024-06-29', 5, 0, 14, 23, 5);

INSERT INTO [ServiceBook] ([BicycleId], [Date], [Price], [StaffId]) VALUES
-- Январь 2024 обслуживание
(2, '2024-01-06', 15.00, 1), (8, '2024-01-09', 20.00, 3), (14, '2024-01-13', 18.00, 5),
(5, '2024-01-16', 25.00, 2), (11, '2024-01-20', 22.00, 4), (17, '2024-01-24', 16.00, 1),
(3, '2024-01-27', 19.00, 3), (9, '2024-01-31', 21.00, 5),
-- Февраль 2024 обслуживание
(1, '2024-02-03', 17.00, 2), (7, '2024-02-07', 23.00, 4), (13, '2024-02-12', 15.00, 1),
(19, '2024-02-14', 20.00, 3), (6, '2024-02-18', 18.00, 5), (12, '2024-02-22', 24.00, 2),
(4, '2024-02-26', 16.00, 4), (10, '2024-02-29', 22.00, 1),
-- Март 2024 обслуживание
(15, '2024-03-02', 19.00, 3), (20, '2024-03-04', 25.00, 5), (2, '2024-03-08', 17.00, 2),
(8, '2024-03-10', 21.00, 4), (14, '2024-03-14', 16.00, 1), (5, '2024-03-18', 23.00, 3),
(11, '2024-03-22', 18.00, 5), (17, '2024-03-26', 20.00, 2),
-- Апрель 2024 обслуживание
(3, '2024-04-01', 22.00, 4), (9, '2024-04-05', 15.00, 1), (1, '2024-04-09', 24.00, 3),
(7, '2024-04-11', 19.00, 5), (13, '2024-04-15', 21.00, 2), (19, '2024-04-19', 17.00, 4),
(6, '2024-04-23', 25.00, 1), (12, '2024-04-27', 16.00, 3),
-- Май 2024 обслуживание
(4, '2024-05-01', 20.00, 5), (10, '2024-05-03', 18.00, 2), (15, '2024-05-07', 22.00, 4),
(20, '2024-05-09', 15.00, 1), (2, '2024-05-13', 23.00, 3), (8, '2024-05-17', 19.00, 5),
(14, '2024-05-21', 21.00, 2), (5, '2024-05-25', 17.00, 4),
-- Июнь 2024 обслуживание
(11, '2024-06-02', 24.00, 1), (17, '2024-06-06', 16.00, 3), (3, '2024-06-08', 20.00, 5),
(9, '2024-06-12', 22.00, 2), (1, '2024-06-16', 18.00, 4), (7, '2024-06-20', 25.00, 1),
(13, '2024-06-24', 19.00, 3), (19, '2024-06-28', 21.00, 5);

-- 12. Наполняем детали в обслуживании (для 50 фактов обслуживания)
INSERT INTO [DetailForService] ([ServiceBookId], [DetailId], [Amount]) VALUES
(1, 3, 1), (1, 7, 1),
(2, 11, 1), (2, 17, 1),
(3, 5, 1), (3, 10, 2),
(4, 1, 1), (4, 6, 1), (4, 8, 1),
(5, 13, 1), (5, 18, 1),
(6, 4, 1), (6, 9, 1),
(7, 2, 1), (7, 7, 1),
(8, 12, 1), (8, 19, 1),
(9, 3, 1), (9, 10, 1),
(10, 14, 1), (10, 20, 2),

(11, 1, 1), (11, 8, 1),
(12, 11, 1), (12, 17, 1),
(13, 5, 1), (13, 10, 1),
(14, 13, 1), (14, 18, 1),
(15, 4, 1), (15, 9, 1),
(16, 2, 1), (16, 7, 1),
(17, 12, 1), (17, 19, 1),
(18, 3, 1), (18, 10, 2),
(19, 14, 1), (19, 20, 1),
(20, 1, 1), (20, 8, 1),

(21, 11, 1), (21, 17, 1),
(22, 5, 1), (22, 10, 1),
(23, 13, 1), (23, 18, 1),
(24, 4, 1), (24, 9, 1),
(25, 2, 1), (25, 7, 1),
(26, 12, 1), (26, 19, 1),
(27, 3, 1), (27, 10, 2),
(28, 14, 1), (28, 20, 1),
(29, 1, 1), (29, 8, 1),
(30, 11, 1), (30, 17, 1);

-- И тут я увидел дикие проблемы с кодировкой в БД, которые так и не получилось решить

UPDATE [Client] SET [Name] = 'Anna Ivanova' WHERE [Id] = 1;
UPDATE [Client] SET [Name] = 'Sergey Smirnov' WHERE [Id] = 2;
UPDATE [Client] SET [Name] = 'Olga Kuznetsova' WHERE [Id] = 3;
UPDATE [Client] SET [Name] = 'Pavel Popov' WHERE [Id] = 4;
UPDATE [Client] SET [Name] = 'Natalya Vasilyeva' WHERE [Id] = 5;
UPDATE [Client] SET [Name] = 'Andrey Petrov' WHERE [Id] = 6;
UPDATE [Client] SET [Name] = 'Ekaterina Sokolova' WHERE [Id] = 7;
UPDATE [Client] SET [Name] = 'Mikhail Mikhaylov' WHERE [Id] = 8;
UPDATE [Client] SET [Name] = 'Tatyana Novikova' WHERE [Id] = 9;
UPDATE [Client] SET [Name] = 'Aleksandr Fedorov' WHERE [Id] = 10;
UPDATE [Client] SET [Name] = 'Irina Morozova' WHERE [Id] = 11;
UPDATE [Client] SET [Name] = 'Vladimir Volkov' WHERE [Id] = 12;
UPDATE [Client] SET [Name] = 'Svetlana Alekseeva' WHERE [Id] = 13;
UPDATE [Client] SET [Name] = 'Nikolay Lebedev' WHERE [Id] = 14;
UPDATE [Client] SET [Name] = 'Marina Semenova' WHERE [Id] = 15;
UPDATE [Client] SET [Name] = 'Yuriy Egorov' WHERE [Id] = 16;
UPDATE [Client] SET [Name] = 'Lyudmila Pavlova' WHERE [Id] = 17;
UPDATE [Client] SET [Name] = 'Roman Kozlov' WHERE [Id] = 18;
UPDATE [Client] SET [Name] = 'Galina Stepanova' WHERE [Id] = 19;
UPDATE [Client] SET [Name] = 'Artem Nikolaev' WHERE [Id] = 20;
UPDATE [Client] SET [Name] = 'Aliya Rakhmetova' WHERE [Id] = 21;
UPDATE [Client] SET [Name] = 'Daniyar Saginov' WHERE [Id] = 22;
UPDATE [Client] SET [Name] = 'Zhanna Temirkhan' WHERE [Id] = 23;
UPDATE [Client] SET [Name] = 'Arman Zhunusov' WHERE [Id] = 24;
UPDATE [Client] SET [Name] = 'Saniya Iskakova' WHERE [Id] = 25;
UPDATE [Client] SET [Name] = 'Yerzhan Kaliev' WHERE [Id] = 26;
UPDATE [Client] SET [Name] = 'Aynur Baymuratova' WHERE [Id] = 27;
UPDATE [Client] SET [Name] = 'Ruslan Tashenov' WHERE [Id] = 28;
UPDATE [Client] SET [Name] = 'Diana Orazbaeva' WHERE [Id] = 29;
UPDATE [Client] SET [Name] = 'Kanat Suleymenov' WHERE [Id] = 30;
UPDATE [Client] SET [Name] = 'Madina Abdrakhmanova' WHERE [Id] = 31;
UPDATE [Client] SET [Name] = 'Bekzat Nurgaliev' WHERE [Id] = 32;
UPDATE [Client] SET [Name] = 'Gulmira Saparbaeva' WHERE [Id] = 33;
UPDATE [Client] SET [Name] = 'Aslan Yakubov' WHERE [Id] = 34;
UPDATE [Client] SET [Name] = 'Zarina Kairbekova' WHERE [Id] = 35;
UPDATE [Client] SET [Name] = 'Dauren Amirov' WHERE [Id] = 36;
UPDATE [Client] SET [Name] = 'Aruzhan Tolegenova' WHERE [Id] = 37;
UPDATE [Client] SET [Name] = 'Marat Baybusinov' WHERE [Id] = 38;
UPDATE [Client] SET [Name] = 'Elnara Zhaksybekova' WHERE [Id] = 39;
UPDATE [Client] SET [Name] = 'Timur Sadykov' WHERE [Id] = 40;
UPDATE [Client] SET [Name] = 'Darya Kovaleva' WHERE [Id] = 41;
UPDATE [Client] SET [Name] = 'Igor Bogdanov' WHERE [Id] = 42;
UPDATE [Client] SET [Name] = 'Viktoriya Gromova' WHERE [Id] = 43;
UPDATE [Client] SET [Name] = 'Artur Yakovlev' WHERE [Id] = 44;
UPDATE [Client] SET [Name] = 'Kristina Zaytseva' WHERE [Id] = 45;
UPDATE [Client] SET [Name] = 'Stanislav Pavlov' WHERE [Id] = 46;
UPDATE [Client] SET [Name] = 'Valeriya Medvedeva' WHERE [Id] = 47;
UPDATE [Client] SET [Name] = 'Vitaliy Belov' WHERE [Id] = 48;
UPDATE [Client] SET [Name] = 'Alina Komarova' WHERE [Id] = 49;
UPDATE [Client] SET [Name] = 'Ruslan Shcherbakov' WHERE [Id] = 50;
UPDATE [Client] SET [Name] = 'John Smith' WHERE [Id] = 51;
UPDATE [Client] SET [Name] = 'Emily Johnson' WHERE [Id] = 52;
UPDATE [Client] SET [Name] = 'Michael Brown' WHERE [Id] = 53;
UPDATE [Client] SET [Name] = 'Sarah Davis' WHERE [Id] = 54;
UPDATE [Client] SET [Name] = 'David Wilson' WHERE [Id] = 55;
UPDATE [Client] SET [Name] = 'Jennifer Miller' WHERE [Id] = 56;
UPDATE [Client] SET [Name] = 'Christopher Taylor' WHERE [Id] = 57;
UPDATE [Client] SET [Name] = 'Jessica Anderson' WHERE [Id] = 58;
UPDATE [Client] SET [Name] = 'Matthew Thomas' WHERE [Id] = 59;
UPDATE [Client] SET [Name] = 'Amanda Jackson' WHERE [Id] = 60;


-- Обновляем названия стран с кириллицы на латиницу
UPDATE [Country] SET [Name] = 'Russia', [Region] = 'Europe' WHERE [Id] = 1;
UPDATE [Country] SET [Name] = 'Kazakhstan', [Region] = 'Central Asia' WHERE [Id] = 2;
UPDATE [Country] SET [Name] = 'Belarus', [Region] = 'Europe' WHERE [Id] = 3;
UPDATE [Country] SET [Name] = 'USA', [Region] = 'North America' WHERE [Id] = 4;


UPDATE [Staff] SET [Name] = 'Aidar Kasymov' WHERE [Id] = 1;
UPDATE [Staff] SET [Name] = 'Gulnara Omarova' WHERE [Id] = 2;
UPDATE [Staff] SET [Name] = 'Bakhyt Zhumaev' WHERE [Id] = 3;
UPDATE [Staff] SET [Name] = 'Aigul Saparbaeva' WHERE [Id] = 4;
UPDATE [Staff] SET [Name] = 'Erlan Tulegenov' WHERE [Id] = 5;
UPDATE [Staff] SET [Name] = 'Ivan Petrov' WHERE [Id] = 6;
UPDATE [Staff] SET [Name] = 'Maria Sidorova' WHERE [Id] = 7;
UPDATE [Staff] SET [Name] = 'Aleksey Kozlov' WHERE [Id] = 8;
UPDATE [Staff] SET [Name] = 'Elena Novikova' WHERE [Id] = 9;
UPDATE [Staff] SET [Name] = 'Dmitriy Volkov' WHERE [Id] = 10;

UPDATE [Detail] SET [Type] = 'Chain' WHERE [Id] = 1;
UPDATE [Detail] SET [Type] = 'Cassette' WHERE [Id] = 2;
UPDATE [Detail] SET [Type] = 'Shifter' WHERE [Id] = 3;
UPDATE [Detail] SET [Type] = 'Brake' WHERE [Id] = 4;
UPDATE [Detail] SET [Type] = 'Fork' WHERE [Id] = 5;
UPDATE [Detail] SET [Type] = 'Sprockets' WHERE [Id] = 6;
UPDATE [Detail] SET [Type] = 'Handlebar' WHERE [Id] = 7;
UPDATE [Detail] SET [Type] = 'Saddle' WHERE [Id] = 8;
UPDATE [Detail] SET [Type] = 'Rim' WHERE [Id] = 9;
UPDATE [Detail] SET [Type] = 'Tire' WHERE [Id] = 10;
UPDATE [Detail] SET [Type] = 'Chain' WHERE [Id] = 11;
UPDATE [Detail] SET [Type] = 'Cassette' WHERE [Id] = 12;
UPDATE [Detail] SET [Type] = 'Shifter' WHERE [Id] = 13;
UPDATE [Detail] SET [Type] = 'Brake' WHERE [Id] = 14;
UPDATE [Detail] SET [Type] = 'Fork' WHERE [Id] = 15;
UPDATE [Detail] SET [Type] = 'Sprockets' WHERE [Id] = 16;
UPDATE [Detail] SET [Type] = 'Handlebar' WHERE [Id] = 17;
UPDATE [Detail] SET [Type] = 'Saddle' WHERE [Id] = 18;
UPDATE [Detail] SET [Type] = 'Rim' WHERE [Id] = 19;
UPDATE [Detail] SET [Type] = 'Tire' WHERE [Id] = 20;