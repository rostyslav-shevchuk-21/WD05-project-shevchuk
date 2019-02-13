-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Лют 14 2019 р., 01:18
-- Версія сервера: 5.7.16
-- Версія PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `WD05-project-shevchuk`
--

-- --------------------------------------------------------

--
-- Структура таблиці `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Ростислав Шевчук', 'Я веб-разработчик.');

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Гаджеты'),
(2, 'Лучшая практика'),
(3, 'Новости IT'),
(4, 'Флешмоб');

-- --------------------------------------------------------

--
-- Структура таблиці `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 34, 1, 'Первый комментарий на сайте', '2019-02-14 01:13:30');

-- --------------------------------------------------------

--
-- Структура таблиці `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(21, 'Мнение: почему 10 year challenge идеальный флешмоб для обучения ИИ', 'Основательница агентства KO Insight и автор нон-фикшн книг о технологиях Кейт О’Нилл написала для Wired колонку о флешмобе 10 year challenge. В нем пользователи делятся своими фотографиями десятилетней давности и актуальными снимками. По мнению О’Нилл, такая механика идеально подходит для обучения нейронных сетей — и это еще один повод задуматься о приватности. \r\n\r\nО’Нилл в своем Twitter-аккаунте назвала флешмоб возможным способом обучить софт по распознаванию лиц. После того, как запись стала популярной, она детально объяснила свою позицию. О’Нилл уверена, что «конспиративный» сценарий происхождения флешмоба очень маловероятен, но выводы из него все равно полезны.', 1, '2019-02-01 22:42:00', NULL, NULL, 4, NULL),
(22, 'Проблемы с булевым типом', 'Люди очень любят говорить о техническом долге. Однако если поискать, что создает этот технический долг, то вы найдете много простого повторяющегося шаблонного кода, который ухудшает общую читаемость. Так что я решил разобрать несколько подобных примеров, чтобы определить, можно ли это как-то просто исправить. Сперва я хочу взглянуть на использование логических типов. Булев тип — чрезвычайно полезная концепция в программировании, но он также может являться источником ошибок, которые трудно найти. Я хочу остановиться на некоторых проблемах, которые могут возникнуть из-за неверного использования логических типов, а также предложить несколько вариантов для уменьшения создаваемого ими технического долга.', 1, '2019-02-01 23:08:06', '239684044567.png', '320-239684044567.png', 2, NULL),
(23, 'Puma представила кроссовки с автоматической шнуровкой &mdash; недавно похожие показала Nike', 'Puma анонсировала кроссовки Fi, которые шнуруются сами. В середине января похожую модель для баскетболистов показала Nike.\r\nPuma работала над ними три года. Кроссовки предназначены для ежедневной носки и для тренировок, они будут стоить $330 за пару и выйдут в продажу весной 2020 года.\r\nВ каждый кроссовок встроены синие светодиоды, которые загораются при шнуровке и показывают уровень заряда, пишет Engadget. Заряжать кроссовки можно при помощи беспроводной док-станции, одного заряда длительностью 90-120 минут должно хватить на неделю.', 1, '2019-02-01 23:09:26', '250857686909.jpg', '320-250857686909.jpg', 1, NULL),
(24, 'NFC приёмник пожертвований', 'В чём суть?\r\n\r\nСама разработка представляет собой устройства по приёму пожертвований. Несмотря на то что сама система представляет собой простой передатчик NFC, готовых форматов нет. Торговые системы сложные и непригодные для использования. Есть ряд проектов, которые так же поднимали эту идею, но массовое производство только планируется или в обще не запустилось.\r\n\r\nОписание устройства\r\n\r\nУстройство состоит из NFC приёма данных с карт или телефона, а так же модема по передаче информации в банк (экваринг). Доступны только бесконтактные системы приёма для России сумма до 1000 рублей. Так же на его корпусе выведены LED-сигналы показывающее, что устройство работает Изначально горят сигналы только по бокам, в случае проведение транзакции загорятся вся сигналы поочередно, волнами.', 1, '2019-02-01 23:10:24', '336656866296.jpg', '320-336656866296.jpg', 1, NULL),
(25, 'Когда дублирование кода допустимо', 'В тестах. Тесты должны быть максимально простыми и понятными для восприятия. Использование обобщений и абстракций может сделать их менее явными и усложнить. Также в тестах не так критична самая главная опасность дублирования. Если вдруг разработчик забудет изменить какой-то участок скопипасченного кода, к серьёзным багам это вряд ли приведёт.\r\n\r\nС тестами разобрались. Но в каких случаях можно дублировать код там, где идёт работа с бизнес-логикой приложения. Для начала нужно оценить примерный срок жизни проекта. Если небольшой краткосрочный проект, то можно спокойно дублировать. Никаких ужасных последствий от этого не будет. Или, например, необходимо в максимально короткие сроки сделать прототип, чтобы показать заказчику или протестировать отклик пользователей. Тут главное скорость, а не качество кода. Поэтому можно обойтись и копипастой, ведь дальше прототипа продукт может и не пойти. В таком случае всем будет вообще без разницы, какие паттерны проектирования использовались при разработке.', 1, '2019-02-01 23:12:11', '633841972939.jpg', '320-633841972939.jpg', 2, NULL),
(27, 'Что делать, если в наследство достался некачественный код', 'Если вам в голову пришел такой вопрос, то главное не бежать все переписывать. Обычно это стандартная реакция одного программиста на код другого программиста — в коде ничего непонятно, сложно разбираться. Кажется проще переписать все с нуля.\r\n\r\nПереписать вы всегда успеете, сначала попробуйте разобраться в требованиях и способах использования приложения. Обычно кодовая база растет эволюционно и накапливает бизнес-логику, которая может быть неочевидной для внешнего человека. Попытка переписать эту логику с нуля породит много багов и проблем.', 1, '2019-02-01 23:14:43', '993993340185.jpg', '320-993993340185.jpg', 2, NULL),
(28, 'Технологические изменения, которые станут реальностью в 2019 году', 'Недавно в Лас-Вегасе прошла международная выставка потребительской электроники CES. Ее главной темой стали “устойчивые технологии” ‒ те, которые могли бы противостоять всей стрессовости и изменчивости современного мира, сохраняя в нем порядок и безопасность. The New York Times в своем материале выделяет главные технологические тенденции нынешнего года 2019 года, которые станут реальностью, — сообщает AIN.UA.\r\n\r\nБитва виртуальных помощников\r\nВ 2019 году все большее количество компаний будет предлагать потребителю гаджеты, реагирующие на голосовые команды. Но основная борьба продолжится между  гигантами Amazon и Google, в чьих портфелях уже есть колонки с виртуальными помощниками и прочие технологические ухищрения. По прогнозу экспертов, Google будет вести себя более агрессивно, увеличивая спектр продуктов, работающих с помощью выпущенного еще в 2016 году виртуального ассистента. На CES компания представила собственный павильон с роботами и анимационными фигурами, создавшими причудливый домашний мир, который делает лучше Google Home Hub ‒ смарт-дисплей с многочисленными функциями помощника.', 1, '2019-02-09 21:10:08', '159778427520.jpg', '320-159778427520.jpg', 3, NULL),
(34, 'Полноценная конкуренция Tesla: Nikola Motors выпустит полностью электрический тягач', '<p><u><strong>До 2017 года </strong></u>никто до конца не верил, что грузовики могут оснащаться электрическими двигателями. Считалось, что их мощности попросту не хватит для перевозки грузов на большие расстояния. Все изменилось в ноябре, когда Tesla представила свой полностью электрический тягач &mdash; потребители и конкуренты наконец-то убедились в эффективности электродвигателей. Разумеется, это отразилось на стратегиях конкурирующих фирм &mdash; <cite><strong>Nikola Motors</strong></cite>, например, тоже решила анонсировать электрический тягач.</p>\r\n\r\n<p>Изначально компания концентрировалась на выпуске водородных грузовиков. Чтобы обеспечить их бесперебойную работу, компания начала налаживать обширную систему поставок водорода и открывать специализированные заправочные станции. Все это заняло много времени и сил &mdash; электрический тягач Tesla за это время стал более предпочтительным для клиентов грузовиком, чем модели&nbsp;<cite><strong><em><a href=\"https://hi-news.ru/technology/tesla-v-mire-tyagachej-predstavlen-vodorodnyj-gruzovik-nikola-one.html\">Nikola One</a>, Nikola Two и&nbsp;<a href=\"https://hi-news.ru/auto/nikola-motors-poboretsya-s-tesla-na-rynke-tyagachej-v-evrope.html\">Nikola Tre</a>.</em></strong></cite></p>\r\n\r\n<p>Видимо, чтобы не остаться в самом конце гонки на рынке альтернативных тягачей, компания Nikola объявила о выпуске электрических вариантов своих водородных тягачей. Новыми двигателями будут оснащены модели<tt> <cite>Nikola Two и Nikola Tre</cite></tt>, а основной тягач компании, Nikola One, так и останется гибридным.</p>\r\n', 1, '2019-02-10 16:35:55', '834000308900.jpg', '320-834000308900.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `surname`, `country`, `city`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'info@mail.com', '$2y$10$E9T7xGg9LnRitnwBLIWd5uUtjxQCS98ABO8FYvhqjtnUwvVU3Fj6i', 'admin', 'Ростислав', 'Шевчук', 'Украина', 'Винница', '773074933006.jpg', '48-773074933006.jpg', '36hsVo1eXfW0UTY', 0),
(9, 'info2@mail.com', '$2y$10$s.J5YPJm9HV.U66qH6mHyeEwNlf7djXMjr2vkZm6Z.5aW/x4J6gwm', 'user', 'Емельян', 'Казаков', 'Россия', 'Казань', '602716185688.jpg', '48-602716185688.jpg', NULL, NULL),
(15, 'info3@mail.com', '$2y$10$fmDlZBIMEmj8EAo90IU8OOv0AsRiNvJCWWaABrQPxFmGF1.L49lb.', 'user', 'Василий ', 'Давыдов', 'Украина', 'Киев', '180576080439.jpg', '48-180576080439.jpg', NULL, NULL);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Індекси таблиці `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
