-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 03 2019 г., 00:33
-- Версия сервера: 5.7.23
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description_short`, `description`, `image`, `image_show`, `meta_title`, `meta_description`, `meta_keyword`, `published`, `viewed`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(9, 'Коломойський: Ми з Аваковим — фан-клуб Зеленського', 'kolomoyskiy-mi-z-avakovim-fan-klub-z-0205192056', '<p>Олігарх Ігор Коломойський заявив, що він разом з міністром внутрішніх справ Арсеном Аваковим &laquo;вболівав&raquo; за Володимира Зеленського на виборах, бо вони були проти переобрання чинного президента Петра Порошенка.</p>', '<p>Про це Коломойський&nbsp;<a href=\"https://www.youtube.com/watch?v=QXRJEFJIrzo&amp;feature=youtu.be\" target=\"_blank\">заявив</a>&nbsp;в інтерв&rsquo;ю Bihus.Info.</p>\r\n\r\n<p>&laquo;Ми в постійному спілкуванні, ми вважаємо, що це спільна перемога (програш Порошенка на виборах президента &mdash; ред.). У нас немає партнерства щодо вибору Зеленського, є фан-клуб Зеленського, тобто ми вболіваємо за Зеленського. Ми за Юлю (Тимошенко &mdash; ред.) вболівали.&nbsp;Ми вболівали проти Петра (Порошенка &mdash; ред.)&raquo;, &mdash; сказав він.</p>\r\n\r\n<p>Коломойський зазначив, що не знає, коли саме Аваков почав &laquo;вболівати&raquo; проти Порошенка і коли чинний президент &laquo;перейшов Рубікон&raquo;, але вважає, що це сталося після так званої справи&nbsp;<a href=\"https://hromadske.ua/posts/apelyacijnij-sud-ostatochno-zakriv-spravu-ryukzakiv-proti-sina-avakova\" target=\"_blank\">&laquo;рюкзаків Авакова&raquo;</a>, в якій фігурував син міністра Олександр.</p>\r\n\r\n<p>Олігарх заявив, що справа &laquo;рюкзаків Авакова&raquo; була &laquo;висмоктана з пальця&raquo;.</p>\r\n\r\n<p>Також Коломойський вважає, що&nbsp;<a href=\"https://hromadske.ua/posts/na-donbasi-gromadyanskij-konflikt-mizh-ukrayincyami-ale-sprovokuvala-jogo-rosiya-kolomojskij\" target=\"_blank\">війна на Донбасі є громадянським конфліктом</a>&nbsp;між українцями, який спровокувала Росія.</p>\r\n\r\n<p>Нагадаємо, Коломойський заявив, що президент Україні&nbsp;<a href=\"https://hromadske.ua/posts/kolomojskij-poroshenko-moya-marionetka-yaka-robitime-vse-abi-spokutuvati-svoyu-provinu\" target=\"_blank\">Петро Порошенко є його &laquo;маріонеткою&raquo;</a>.</p>\r\n\r\n<p>Також Коломойський підтвердив, що юрист Андрій Богдан, який здійснює юридичний супровід кампанії шоумена Володимира Зеленського,&nbsp;<a href=\"https://hromadske.ua/posts/kolomojskij-pidtverdiv-sho-jogo-advokat-zaodno-i-yurist-zelenskogo\" target=\"_blank\">працює його особистим адвокатом</a>.</p>\r\n\r\n<p>Згідно з розслідуванням &laquo;Схем&raquo;, Зеленський упродовж 2 років 13 разів&nbsp;<a href=\"https://hromadske.ua/posts/zelenskij-uprodovzh-2-rokiv-13-raziv-litav-do-zhenevi-ta-tel-aviva-de-meshkaye-kolomojskij-shemi\" target=\"_blank\">літав до Женеви та Тель-Авіва, де мешкає Коломойський</a>.</p>', NULL, NULL, 'Коломойський: Ми з Аваковим — фан-клуб Зеленського', 'Коломойський: Ми з Аваковим — фан-клуб Зеленського', 'Зеленский, Коломойский', 1, NULL, NULL, NULL, '2019-05-02 17:56:20', '2019-05-02 17:56:20'),
(10, 'Коломойський: Порошенко програв вибори, бо у нього не було \"1+1\"', 'kolomoyskiy-poroshenko-prograv-vibori-0205192100', '<p>Олігарх Ігор Коломойський заявив, що президент Петро Порошенко програв президентські вибори в Україні, тому що у нього не було телеканалу &quot;1+1&quot;.</p>', '<p>Олігарх Ігор Коломойський заявив, що президент Петро Порошенко програв президентські вибори в Україні, тому що у нього не було телеканалу &quot;1+1&quot;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://prportal.com.ua/sites/default/files/styles/default/public/1757e3a-kolomoiskiy.jpg?itok=M2NH8t4E\" /></p>\r\n\r\n<p>Про це він сказав в інтерв&rsquo;ю &quot;Bihus.info&quot;. &quot;Порошенко хотів забрати собі 1+1, але він програв вибори, бо у нього не було &quot;1+1&quot;.</p>\r\n\r\n<p>Йому всі говорили з його оточення Кононенко, Луценко, а як ти збираєшся на вибори, якщо твій електорат плюси дивиться?&quot;, - заявив олігарх.</p>\r\n\r\n<p>За його словами, миритися з президентом Петром Порошенком він не збирається. Також він згадав ефір програми &quot;Право на владу&quot;, куди без запрошення прийшов Порошенко.</p>\r\n\r\n<p>Коломойський заявив, що мав би виписати Порошенку премію за рекламу.</p>\r\n\r\n<p>Крім того олігарх розповів, що разом з міністром МВС Арсеном Аваковим на президентських виборах вболівав &quot;проти Пєті&quot;.</p>\r\n\r\n<p>&quot;Я святкував перемогу (Зеленського - УП) двічі. 31 березня і 21 квітня&quot;, - заявив Коломойський.</p>', NULL, NULL, 'Коломойський: Порошенко програв вибори, бо у нього не було \"1+1\"', 'Коломойський: Порошенко програв вибори, бо у нього не було \"1+1\"', 'политика, зеленский', 1, NULL, NULL, NULL, '2019-05-02 18:00:31', '2019-05-02 18:00:31'),
(11, 'Зеленский поставил на место Путина и Порошенко', 'zelenskiy-postavil-na-mesto-putina-i-por-0205192102', '<p>Владимир Зеленский резко ответил своим конкурентам, а также лидеру вражеской на данный момент для Украины РФ - Владимиру Путину.</p>', '<p>Так, несколько дней назад, Владимир Путин рассказывал о том, что у украинцев и Россиян есть &quot;много общего&quot;, до этого Петр Порошенко заявлял, что Зеленский является агентом Кремля, а также о том, что он якобы является &quot;марионеткой пророссийских олигархов&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://akcenty.com.ua/crops/78259e/620x0/1/0/2019/05/02/PY1hpwm8hlqFwn5iF0G5bqqGlokQDGog0XywKz2P.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Записав ответ на своей официальной страничке в&nbsp;<a href=\"https://www.facebook.com/zelenskiy95/posts/2239037446346619\" target=\"_blank\">Facebook,</a>&nbsp;Владимир Зеленский смог заткнуть сразу &quot;двух зайцев&quot;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>&laquo;Долго думал о &laquo;много общего&raquo; между Украиной и Россией. Реальность такова, что сегодня, после аннексии Крыма и агрессии на Донбассе, из &laquo;общего&raquo; у нас осталось только одно &mdash; это государственная граница&raquo;, &mdash; написал новоизбранный президент Украины. &laquo;И контроль за каждым миллиметром с украинской стороны Россия должна вернуть. Только тогда мы сможем продолжить поиски &laquo;общего&raquo;, &mdash; подчеркнул Зеленский.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Не забыл Зленский и о нелепой попытке его очернить, запустив на российском ТВ старое шоу, снятое еще в 2011 году.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>&laquo;Хочу напомнить, что именно участие в телешоу сделала меня популярным в Украине и в конце концов помогла стать избранным президентом Украины.Эфир этого шоу, снятого много лет назад, на мой взгляд, имеет странный вид &mdash; у меня нет амбиций сделать политическую карьеру в России&raquo;, &mdash; отметил новоизбранный президент.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Напомним,&nbsp;<a href=\"https://akcenty.com.ua/politics/17321-vozmet-s-nego-primer-zelenskiy-nazval-idealnogo-politika-vot-po-chim-stopam-poydet-prezident\">Зеленский назвал идеального политика</a>.&nbsp;Владимир Зеленский назвал известного полководца и императора Франции Наполеона и Петра Первого &mdash; последнего царя всея Руси и первого Всероссийского Императора.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://akcenty.com.ua/crops/8eb05e/620x0/1/0/2019/05/02/F4mdAB2b02dxFDVIO6S05QjL2hhyIxEC8Y8sq1hA.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ранее портал&nbsp;<a href=\"https://akcenty.com.ua/\">Акценты</a>&nbsp;писал,&nbsp;<a href=\"https://akcenty.com.ua/obshchestvo/17317-stalo-izvestno-kogda-zelenskiy-obyavit-familii-novyh-ministrov-genprokurora-i-glavy-sbu-ozvucheno-vazhnoe-uslovie\">когда Зеленский объявит фамилии новых министров, генпрокурора и главы СБУ</a>.&nbsp;Очевидно, что новый президент постарается найти замену нынешним главе Службы Безопасности Украины, генеральному прокурору, министру обороны и начальнику МИДа, а также начальнику генштаба. Костюк заявил, что Владимир Зеленский не станет называть эти фамилии до того, как официально вступит в должность.</p>', NULL, NULL, 'Зеленский поставил на место Путина и Порошенко', 'Зеленский поставил на место Путина и Порошенко', 'политика, зеленский', 1, NULL, NULL, NULL, '2019-05-02 18:02:25', '2019-05-02 18:02:25'),
(12, 'КОЛОМОЙСКИЙ: ВЫИГРАННЫЕ СУДЫ ПО «ПРИВАТБАНКУ» НЕ СВЯЗАНЫ С ЗЕЛЕНСКИМ', 'kolomoyskiy-vyigrannye-sudy-po-privatb-0205192104', '<p>Олигарх Игорь Коломойский заявил, что недавние выигрыши дел по &quot;ПриватБанку&quot; никак не были связаны с рейтингами Владимира Зеленского на выборах.</p>', '<p>Об этом Коломойский рассказал в интервью&nbsp;<a href=\"https://www.youtube.com/watch?v=QXRJEFJIrzo&amp;fbclid=IwAR0Yi1TUdf2llQ5EyfF0eCCs-8mCRoL4ERR4iCPs1h1ucUl7paaI8qckCUE\" target=\"_blank\">Bihus.info.</a></p>\r\n\r\n<p>По его словам, в Украине еще минимум 40 или 50 не выигранных и не рассмотренных процессов.&nbsp;Коломойский заявил, что соответствующие судебные процессы идут с 2017 года.</p>\r\n\r\n<p>&quot;А почему мы их не проиграли пока он не поменялся? Эти иски были поданы еще в 17-м году. Давайте начнем с того, почему не было результата рассмотрения до того, два года. Кто мешал их рассмотреть? Тогда же не было рейтингов, Зеленского, ни первого, ни второго тура. Я подал иск, который я выиграл 18 числа, первый, что неправильная национализация. Его надо было подать до 16 июня 2016 года, шесть месяцев с момента национализации. И когда я последний раз видел Порошенко, он говорит: &quot;А зачем ты подал в суд?&quot;. Я говорю: &quot;Я запарковал себе право судиться, чтобы не было потом просрочек, срок исковой давности&hellip;&quot;, - объяснил Коломойский.</p>\r\n\r\n<p>Журналист напомнил ему о письме Премьер-министру Владимиру Гройсману, в котором теперь уже бывшие собственники финучреждения просили его национализации и обещали всячески ей способствовать. Государство, в свою очередь, должно было покрыть долги &quot;ПриватБанка&quot; перед НБУ по кредитам рефинансирования. Олигарх ответил, что было не так.&nbsp;</p>\r\n\r\n<p>Коломойский&nbsp;добавил, что это письмо &quot;не предполагало агрессивного пиара против бывших собственников&quot;.&nbsp;</p>\r\n\r\n<p>&quot;Если бы был бы договор, мы его выполняли бы. Мы подписали обращение к премьер-министру, что в сложившейся ситуации мы предлагаем правительству национализировать, потому что мы не в состоянии удерживать, то что устроил Нацбанк. Это отдельная история, она касается судебного процесса, но поверьте мне, что этот процесс шел на протяжении двух месяцев. И там были разные варианты, договора и прочее&quot;, - отметил он.</p>\r\n\r\n<ul>\r\n	<li>Ранее сообщалось, что государственный &quot;ПриватБанк&quot;&nbsp;<a href=\"https://bykvu.com/bukvy/116447-privatbank-perechislit-v-gosbyudzhet-90-chistoj-pribyli-za-2018-god\" target=\"_blank\">направит</a>&nbsp;на выплату дивидендов государству 90 % чистой прибыли.</li>\r\n	<li>По словам первой заместительницы главы Нацбанка Екатерины Рожковой, &quot;ПриватБанк&quot;&nbsp;<a href=\"https://bykvu.com/bukvy/116070-v-nbu-rasskazal-o-sudbe-privatbanka-v-sluchae-otmeny-natsionalizatsii\" target=\"_blank\">снова станет банкротом</a>, если отменить национализацию и забрать вложенные государством деньги.&nbsp;<a href=\"https://bykvu.com/bukvy/116064-vyplaty-vkladchikam-pri-otmene-natsionalizatsii-privatbanka-obojdutsya-v-4-9-mlrd\" target=\"_blank\">Выплаты вкладчикам</a>&nbsp;при отмене национализации обойдутся в $4,9 млрд.</li>\r\n	<li>Бывшая глава Национального банка Украины Валерия Гонтарева заявила, что в случае отмены национализации &quot;ПриватБанка&quot;&nbsp;<a href=\"https://bykvu.com/bukvy/116227-privatbank-likvidiruyut-v-sluchae-otmeny-natsionalizatsii-gontareva\" target=\"_blank\">госбанк будет ликвидирован</a>.</li>\r\n</ul>', NULL, NULL, 'КОЛОМОЙСКИЙ: ВЫИГРАННЫЕ СУДЫ ПО «ПРИВАТБАНКУ» НЕ СВЯЗАНЫ С ЗЕЛЕНСКИМ', 'КОЛОМОЙСКИЙ: ВЫИГРАННЫЕ СУДЫ ПО «ПРИВАТБАНКУ» НЕ СВЯЗАНЫ С ЗЕЛЕНСКИМ', 'коломойский', 1, NULL, NULL, NULL, '2019-05-02 18:04:54', '2019-05-02 18:04:54'),
(13, '\"Мы хотим сделать так, чтобы и волки были сыты, и овцы целы\", - Коломойский об отмене национализации \"Приватбанка\"', 'my-khotim-sdelat-tak-chtoby-i-volki-byl-0205192105', '<h2>Олигарх Игорь Коломойский заявил, что во время возврата &quot;Приватбанка&quot; он хочет сделать так, чтобы не пострадал украинский народ, но были наказаны виновники.</h2>', '<p>&quot;Мы хотим так сделать, чтобы и волки были сыты, и овцы целы. Мы хотим, чтобы от этого не пострадал украинский народ. Точечно и хирургически. И скальпелем, а не топором. Да, мы хотим, первое, чтобы был справедливым вердикт. Второе - чтобы были наказаны виновники, кто это сделал. А никакую материальную компенсацию, лишнего от того, что мы дали, нам ничего не надо. Нам или отдайте потрепанную и никому не нужную собственность, потому что этот банк уже ниче не стоит после трех лет мудрого управления, или банк отдайте и заберите все, что вы внесли&quot;, - заявил Коломойский.</p>\r\n\r\n<p>Он подчеркнул, что его &quot;не интересует нанесение ущерба государству, а справедливость прежде всего&quot;.</p>\r\n\r\n<p>&quot;Так от для того, чтобы не наносить ущерб, давайте пока подумаем о механизме реституции или компенсации. И распишем. Нам все равно на какой срок. Мы ж без этих денег не умрем. Мы нормально питаемся, у нас есть на что жить, но мы хотим справедливости&quot;, - заявил Коломойский.Источник:&nbsp;<a href=\"https://censor.net.ua/n3125203\">https://censor.net.ua/n3125203</a></p>', NULL, NULL, '\"Мы хотим сделать так, чтобы и волки были сыты, и овцы целы\", - Коломойский об отмене национализации \"Приватбанка\"', '\"Мы хотим сделать так, чтобы и волки были сыты, и овцы целы\", - Коломойский об отмене национализации \"Приватбанка\"', 'коломойский', 1, NULL, NULL, NULL, '2019-05-02 18:05:58', '2019-05-02 18:05:58'),
(14, 'В мобильном Google Chrome обнаружена уязвимость с фейковой адресной строкой', 'v-mobilnom-google-chrome-obnaruzhena-uyaz-0205192107', '<p>В самом популярном браузере мира обнаружена достаточно простая, но неприятная уязвимость.&nbsp;<br />\r\n<br />\r\n&nbsp;</p>', '<p>В самом популярном браузере мира обнаружена достаточно простая, но неприятная уязвимость.</p>\r\n\r\n<p><img src=\"https://ilenta.com/netcat_files/446/316/Chrome_1.jpg\" style=\"width:620px\" /></p>\r\n\r\n<p>Речь идет о мобильном Google Chrome, дыру в котором обнаружил разработчик Джеймс Фишер. Уязвимость основана на отображении адресной строки. Когда пользователь прокручивает страницу сверху вниз, происходит отображение фальшивой адресной строки, которая не исчезнет, пока не произойдёт переход на другой сайт.</p>\r\n\r\n<p>При этом злоумышленник может даже обработать страницу таким образом, чтобы пользователь не увидел реальную адресную строку при прокрутке вверх. В результате, пользователь может находиться на сайте, даже приблизительно не понимая, что он является фальшивым, так как фейковая адресная строка будет показывать нужный злоумышленникам адрес.</p>\r\n\r\n<p>В компании Google пока не прокомментировали находку Джеймса Фишера. Экспертам еще придется выяснить, насколько опасной является уязвимость и насколько реально ею могут воспользоваться злоумышленники.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;</p>', NULL, NULL, 'В мобильном Google Chrome обнаружена уязвимость с фейковой адресной строкой', 'В мобильном Google Chrome обнаружена уязвимость с фейковой адресной строкой', 'google', 1, NULL, NULL, NULL, '2019-05-02 18:07:55', '2019-05-02 18:07:55'),
(15, 'Как найти iPhone при помощи часов Apple Watch', 'kak-nayti-iphone-pri-pomoshchi-chasov-apple-0205192110', '<p>Помимо всего прочего, у смарт-часов Apple имеется&nbsp;одна малоизвестная, но очень ценная функция.&nbsp;<strong>Apple Watch</strong>&nbsp;можно использовать для поиска потерявшегося iPhone. Невероятно удобная вещь, если ваш любимый смартфон куда-то завалился, а вам нужно срочно его найти. Как это сделать?</p>', '<p><a href=\"https://portaltele.com.ua/wp-content/uploads/2019/03/Apple_Watch_Series_4_review_App_carousel-780x596.jpg\"><img alt=\"\" src=\"https://portaltele.com.ua/wp-content/uploads/2019/03/Apple_Watch_Series_4_review_App_carousel-780x596.jpg\" style=\"height:532px; width:696px\" /></a></p>\r\n\r\n<p><strong>Как найти iPhone при помощи Apple Watch</strong></p>\r\n\r\n<p><em>1</em>. Нажмите на&nbsp;колесико&nbsp;Digital Crown до тех пор, пока не окажетесь на циферблате часов.</p>\r\n\r\n<p><em>2</em>. Проведите пальцем из нижней части вверх. Откроется интерфейс Пункта управления.</p>\r\n\r\n<p><em>3</em>. Коснитесь значка с изображением смартфона. iPhone издаст хорошо различимый звук, и вы легко его найдете.</p>\r\n\r\n<p><strong>Как найти iPhone при помощи Apple Watch в темноте</strong></p>\r\n\r\n<p>К звуку можно добавить и &laquo;иллюминацию&raquo; от&nbsp;LED-вспышки на iPhone. Чтобы сделать это,&nbsp;<strong>нажмите и удерживайте</strong>&nbsp;в настройках &laquo;звуковую&raquo; кнопку (а не просто нажмите и отпустите). Это особенно полезно ночью &mdash; откуда идёт звук, можно понять не сразу, а вот &laquo;светомузыку&raquo; заметит каждый.</p>\r\n\r\n<p>Основное условие для того, чтобы эти нехитрые трюки сработали &ndash;<strong>&nbsp; Watch</strong>&nbsp;должны быть&nbsp;в паре с iPhone. То, что в вашем случае всё будет именно так, весьма вероятно &mdash; ведь без подключения к смартфону часы &laquo;умеют&raquo; куда меньше.</p>', NULL, NULL, 'Как найти iPhone при помощи часов Apple Watch', 'Как найти iPhone при помощи часов Apple Watch', 'iphone', 1, NULL, NULL, NULL, '2019-05-02 18:10:30', '2019-05-02 18:10:30'),
(16, 'Xiaomi Pocophone F1 начал дешеветь перед выпуском преемника', 'xiaomi-pocophone-f1-nachal-deshevet-pered-0205192112', '<p>Смартфон Xiaomi Pocophone F1, который оказался самым дешевым флагманом в мире, до сих пор пользуется высоким спросом, хотя уже вот-вот будет выпущен его преемник.&nbsp;<br />\r\n<br />\r\n&nbsp;</p>', '<p>В преддверии запуска Xiaomi Pocophone F2, который уже побывал в Geekbench, стоимость Xiaomi Pocophone F1 начала снижаться. Скидка составляет в районе $30.</p>\r\n\r\n<p>Речь идет о версии с 6 ГБ оперативной памяти и 128 ГБ флэш-памяти, которая в Индии теперь будет продаваться по цене $300. Что касается версии с 64 ГБ флэш-памяти, то ее ценник в этой стране составит $250.</p>\r\n\r\n<p>Что касается Xiaomi Pocophone F2, то он будет основан на однокристальной платформе Snapdragon 855. В результате, он окажется самым дешевым флагманом на базе этого чипа.</p>\r\n\r\n<p>Хотя в этой ситуации становится непонятной история с запуском флагмана Redmi, которому тоже пророчат стать самым дешевым девайсом, управляемым Snapdragon 855.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 'Xiaomi Pocophone F1 начал дешеветь перед выпуском преемника', 'Xiaomi Pocophone F1 начал дешеветь перед выпуском преемника', 'xiaomi', 1, NULL, NULL, NULL, '2019-05-02 18:12:07', '2019-05-02 18:12:07'),
(17, 'Назван самый продаваемый смартфон года', 'nazvan-samyy-prodavaemyy-smartfon-goda-0205192113', '<h2>Лидировал в рейтинге прошлогодний флагманский смартфон iPhone X. В целом &quot;яблочные&quot; гаджеты заняли первые четыре позиции.</h2>', '<p><img alt=\"Назван самый продаваемый смартфон года\" src=\"https://kor.ill.in.ua/m/610x385/2327902.jpg\" /></p>\r\n\r\n<p>Фото: EPA</p>\r\n\r\n<p>iPhone оказался самым продаваемым смартфоном года</p>\r\n\r\n<h2>Лидировал в рейтинге прошлогодний флагманский смартфон iPhone X. В целом &quot;яблочные&quot; гаджеты заняли первые четыре позиции.</h2>\r\n\r\n<p>Специалисты компании Counterpoint Research составили рейтинг самых продаваемых в мире смартфонов 2018 года. Первое место занял прошлогодний флагман iPhoneX. Об этом&nbsp;<a href=\"https://www.gizmochina.com/2019/04/30/bestselling-smartphones-2018/\" target=\"_blank\">пишет&nbsp;</a>Gizmochina.</p>\r\n\r\n<p>Помимо него, &quot;яблочные&quot;&nbsp; &nbsp;гаджеты также заняли три последующих позиции рейтинга, а именно - iPhone 8, iPhone 8 Plus и iPhone 7.</p>\r\n\r\n<p>На пятой идет Xiaomi Redmi 5A, а шестую занял Samsung Galaxy S9. Далее идут еще два гаджета Apple - iPhone XS Max и iPhone XR. А замыкают топ-десятку Galaxy S9 Plus и Galaxy S6.</p>', NULL, NULL, 'Назван самый продаваемый смартфон года', 'Назван самый продаваемый смартфон года', 'iphone', 1, NULL, NULL, NULL, '2019-05-02 18:13:50', '2019-05-02 18:13:50'),
(18, 'Обновленный BMW M8 без камуфляжа заметили в Нюрбургринге', 'obnovlennyy-bmw-m8-bez-kamuflyazha-zametil-0205192117', '<p>Фотошпионам удалось запечатлеть во время дорожных испытаний обновленный BMW M8, который в ближайшее время официально представят публике.</p>', '<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://avtodream.org/uploads/posts/2019-05/thumbs/1556718512_obnovlennyy-bmw-m8-bez-kamuflyazha-zametili-v-nyurburgringe.jpg\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Финальное тестирование автомобиля осуществлялось на знаменитой трассе Нюрбургринга, тогда как производителем совершенно не привлекался защитный камуфляж для сокрытия изменений формы кузова. Также опубликовали шпионские снимки, на которых можно рассмотреть автомобиль, стоящий на одной из немецких парковок.&nbsp;<br />\r\n<br />\r\n<br />\r\n<br />\r\nНовая генерация BMW M8 обладает карбоновой крышей и более низким бампером.<br />\r\n<br />\r\n<br />\r\nПередняя часть кузова спортивной модели практически не отличается от предшественника. В свою очередь, под капотом новинки BMW M8 применили 4,4-литровый бензиновый мотор с мощностью около 600 л.с.</p>', NULL, NULL, 'Обновленный BMW M8 без камуфляжа заметили в Нюрбургринге', 'Обновленный BMW M8 без камуфляжа заметили в Нюрбургринге', 'bmw', 1, NULL, NULL, NULL, '2019-05-02 18:17:54', '2019-05-02 18:17:54'),
(19, 'Электрический внедорожник BMW iX3 был замечен в Мюнхене на тестах', 'elektricheskiy-vnedorozhnik-bmw-ix3-byl-za-0205192119', '<p>Первый полностью электрический внедорожник BMW был замечен в Мюнхене во время обычных дорожных испытаниях. Модель явно построена на базе стандартного X3 и появится в продаже в следующем году.</p>', '<p>Первый полностью электрический внедорожник BMW был замечен в Мюнхене во время обычных дорожных испытаниях. Модель явно построена на базе стандартного X3 и появится в продаже в следующем году.</p>\r\n\r\n<p>В Мюнхене на дорожных испытаниях был замечен закамуфлированный прототип электрического кроссовера BMW iX3. Модель станет первым полностью электрическим внедорожником баварского бренда, и первой моделью, которая охватит все сегменты: ДВС, Гибриды и электрокары. Электрическая версия построена на базе&nbsp;<a href=\"https://bmw-x3.infocar.ua/x3_id5264.html\">стандартного кроссовера X3</a>.</p>\r\n\r\n<p>Несмотря на камуфляж, уже сейчас можно сказать, что iX3 будет отличаться новым дизайном решетки радиатора и бампера. Решетка радиатора будет закрыта заглушками, или получит уменьшенную пропускную способность, и обеспечит охлаждение аккумуляторной батареи.</p>\r\n\r\n<p>В качестве источника питания будет использоваться аккумуляторная батарея на 70 кВт*часов. Предполагаемый запас хода составит около 400 км пути на полном запасе. Под капотом установят электромотор с мощностью около 270 лошадиных сил.</p>\r\n\r\n<p><a href=\"https://i.infocar.ua/img/news-/128488/ins/1556002607032_.jpg\" target=\"_blank\"><img alt=\"\" src=\"https://i.infocar.ua/img/news-/128488/ins/1556002607032.jpg\" style=\"height:301px; width:620px\" /></a></p>\r\n\r\n<p>Еще одной особенностью&nbsp;<a href=\"https://bmw.infocar.ua/\">кроссовера BMW iX3</a>&nbsp;станет система быстрой зарядки с максимальной пропускной способностью до 150 кВт. Это позволит зарядить аккумулятор до 80% всего за 30 минут.</p>', NULL, NULL, 'Электрический внедорожник BMW iX3 был замечен в Мюнхене на тестах', 'Электрический внедорожник BMW iX3 был замечен в Мюнхене на тестах', 'bmw', 1, NULL, NULL, NULL, '2019-05-02 18:19:46', '2019-05-02 18:19:46'),
(20, 'Смертельна ДТП з інженером Apple: на Tesla подали до суду через автопілот', 'smertelna-dtp-z-inzhenerom-apple-na-tes-0205192121', '<p>Сім&rsquo;я інженера компанії Apple подала до суду на компанію Tesla після смертельної ДТП, де загинув чоловік через помилку автопілота.</p>', '<p><img alt=\"Смертельна ДТП з інженером Apple: на Tesla подали до суду через автопілот\" src=\"https://fakty.com.ua/wp-content/uploads/2019/05/02/Tesla-1.jpg\" /></p>\r\n\r\n<p>Аварія сталася ще 2 березня минулого року у штаті Каліфорнія. Машина рухалася на автопілоті, за кермом Tesla Model X SUV перебував 38-річний Уолтер Хуан. Водій їхав зі швидкістю 115 км/год і врізалася в захисний бар&rsquo;єр на трасі.</p>\r\n\r\n<p>Внаслідок аварії водій загинув. Сім&rsquo;я вважає, що цей інцидент трапився через помилку&nbsp;системи автопілота.</p>\r\n\r\n<blockquote>\r\n<p>&ndash; Місіс Хуан втратила чоловіка, двоє дітей залишилися без батька, тому що Tesla&nbsp;<strong>тестувала свою систему автопілота на реальних людях</strong>.</p>\r\n\r\n<p>Сім&rsquo;я Хуан хоче, щоб подібна трагедія не сталася з іншими водіями Tesla чи інших напівавтономних транспортних засобів, &ndash; йдеться в повідомленні.</p>\r\n</blockquote>\r\n\r\n<p>Сім&rsquo;я стверджує, що рекламна кампанія виробника електрокарів приховала реальні можливості автомобілів Tesla і подарувала покупцеві завищені очікування.</p>\r\n\r\n<p>У судовому позові сім&rsquo;я Хуан звинувачує Tesla в поганому дизайні продукту, а також навмисному спотворенні інформації про можливості автомобіля.</p>\r\n\r\n<blockquote>\r\n<p>&ndash; Навігаційна система Tesla в автомобілі містера Хуана неправильно розпізнала смуги на проїжджій частині, тому не змогла визначити розділювальну смугу і замість того, щоб загальмувати &ndash; пришвидшила рух, &ndash; йдеться у позові.</p>\r\n</blockquote>\r\n\r\n<p>Нагадаємо, електромобіль<a href=\"https://fakty.com.ua/ua/lifestyle/auto/20190422-tesla-model-s-vybuhnula-na-parkovtsi-v-shanhayi/\" target=\"_blank\">&nbsp;Tesla Model S вибухнув</a>&nbsp;на підземній парковці в Шанхаї.</p>', NULL, NULL, 'Смертельна ДТП з інженером Apple: на Tesla подали до суду через автопілот', 'Смертельна ДТП з інженером Apple: на Tesla подали до суду через автопілот', 'Tesla', 1, NULL, NULL, NULL, '2019-05-02 18:21:19', '2019-05-02 18:21:19'),
(21, 'Полицейские Базеля пересели на новенькие электромобили Tesla Model X', 'politseyskie-bazelya-pereseli-na-novenkie-0205192122', '<p>Полицейское управление швейцарского Безеля наконец-то запустило в работу группу патрульных автомобилей, в которые переоборудовали Tesla Model X.</p>', '<p><img alt=\"Полицейские Базеля пересели на новенькие электромобили Tesla Model X\" src=\"https://i0.wp.com/autogeek.com.ua/wp-content/uploads/2019/04/tesla-model-x-police-vehicle-basel.jpg?fit=1024%2C494&amp;ssl=1\" /></p>\r\n\r\n<p>Покупка машин по 100 000 долларов каждая может вызвать недоумение, но в полиции утверждают, что таким образом собираются основательно сэкономить.</p>\r\n\r\n<p>Всего правоохранители приобрели семь Tesla Model X 100D. В итоге каждый электромобиль обошелся полицейским на 49 000 франков дороже, чем обычные дизельные машины. Тем не менее, в управлении заявляют, что в перспективе Tesla сэкономят намного больше средств.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Model X начали поступать в Безель в начале декабря прошлого года. Их начали переоборудовать в патрульные автомобили. Однако длительное время не решались использовать. В полиции опасались, что Tesla может отслеживать свои машины и записывать все, что было сказано в салоне.</p>\r\n\r\n<p><img alt=\"Полицейские Базеля пересели на новенькие электромобили Tesla Model X\" src=\"https://i0.wp.com/autogeek.com.ua/wp-content/uploads/2019/04/tesla-model-x-police-vehicle-1.jpeg?w=640&amp;ssl=1\" /></p>\r\n\r\n<p>В компании в ответ на это заявили, что владелец может самостоятельно отключить функцию местоположения. В Tesla подтвердили наличие голосовых функций, но что говорится в салоне, не записывается.</p>\r\n\r\n<p><img alt=\"Полицейские Базеля пересели на новенькие электромобили Tesla Model X\" src=\"https://i2.wp.com/autogeek.com.ua/wp-content/uploads/2019/04/tesla-model-x-police-vehicle-2.jpeg?w=640&amp;ssl=1\" /></p>\r\n\r\n<p>Похоже, в полиции поверили и начали развертывать автопарк. На данный момент уже активно эксплуатируется три электромобиля, еще четыре &ndash; готовят к работе.</p>\r\n\r\n<p><img alt=\"Полицейские Базеля пересели на новенькие электромобили Tesla Model X\" src=\"https://i1.wp.com/autogeek.com.ua/wp-content/uploads/2019/04/tesla-model-x-police-vehicle-3.jpeg?w=640&amp;ssl=1\" /></p>\r\n\r\n<p>Как ранее сообщал Autogeek, полицейское управление американского Денвера стало одним из первых, где&nbsp;<a href=\"https://autogeek.com.ua/policija-konfiskovala-jelektromobil-u-narkokartelja-teper-na-tesla-ezdit-patrul/\">электромобиль Tesla является частью автопарка.</a>&nbsp;При этом копы не покупали этот автомобиль.</p>', NULL, NULL, 'Полицейские Базеля пересели на новенькие электромобили Tesla Model X', 'Полицейские Базеля пересели на новенькие электромобили Tesla Model X', 'Tesla', 1, NULL, NULL, NULL, '2019-05-02 18:22:37', '2019-05-02 18:22:37');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `parent_id`, `published`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(4, 'Автоновости', 'avtonovosti-0205192048', 0, 1, NULL, NULL, '2019-05-02 17:48:34', '2019-05-02 17:48:34'),
(5, 'Политика', 'politika-0205192048', 0, 1, NULL, NULL, '2019-05-02 17:48:46', '2019-05-02 17:48:46'),
(6, 'Современные технологии', 'sovremennye-tekhnologii-0205192050', 0, 1, NULL, NULL, '2019-05-02 17:50:48', '2019-05-02 17:50:48'),
(7, 'Экономика и бизнес', 'ekonomika-i-biznes-0205192051', 0, 1, NULL, NULL, '2019-05-02 17:51:19', '2019-05-02 17:51:19');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryables`
--

CREATE TABLE `categoryables` (
  `category_id` int(11) NOT NULL,
  `categoryable_id` int(11) NOT NULL,
  `categoryable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryables`
--

INSERT INTO `categoryables` (`category_id`, `categoryable_id`, `categoryable_type`) VALUES
(5, 9, 'App\\Article'),
(5, 10, 'App\\Article'),
(5, 11, 'App\\Article'),
(7, 12, 'App\\Article'),
(7, 13, 'App\\Article'),
(6, 14, 'App\\Article'),
(6, 15, 'App\\Article'),
(6, 16, 'App\\Article'),
(6, 17, 'App\\Article'),
(4, 18, 'App\\Article'),
(4, 19, 'App\\Article'),
(4, 20, 'App\\Article'),
(4, 21, 'App\\Article');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(7, 'Тестовый комментарий', 2, 9, '2019-05-02 18:23:59', '2019-05-02 18:23:59'),
(8, 'Тестовый комментарий', 1, 9, '2019-05-02 18:24:34', '2019-05-02 18:24:34');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_04_17_173616_create_categories_table', 1),
(20, '2019_04_19_101219_create_articles_table', 1),
(21, '2019_04_19_151703_create_categoryable_table', 1),
(22, '2019_04_23_090216_create_tags_table', 1),
(23, '2019_04_23_090436_create_comments_table', 1),
(24, '2019_04_23_091346_create_posts_tags_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(8, 9, 15, NULL, NULL),
(9, 9, 19, NULL, NULL),
(10, 10, 15, NULL, NULL),
(11, 10, 18, NULL, NULL),
(12, 10, 19, NULL, NULL),
(13, 11, 15, NULL, NULL),
(14, 11, 18, NULL, NULL),
(15, 12, 19, NULL, NULL),
(16, 13, 19, NULL, NULL),
(17, 14, 21, NULL, NULL),
(18, 15, 20, NULL, NULL),
(19, 16, 16, NULL, NULL),
(20, 16, 23, NULL, NULL),
(21, 17, 20, NULL, NULL),
(22, 17, 23, NULL, NULL),
(23, 18, 22, NULL, NULL),
(24, 19, 22, NULL, NULL),
(25, 20, 14, NULL, NULL),
(26, 21, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(14, 'тесла', 'tesla', '2019-05-02 17:44:17', '2019-05-02 17:44:17'),
(15, 'зеленский', 'zelenskiy', '2019-05-02 17:44:26', '2019-05-02 17:44:26'),
(16, 'xiaomi', 'xiaomi', '2019-05-02 17:44:39', '2019-05-02 17:44:39'),
(17, 'honda', 'honda', '2019-05-02 17:44:48', '2019-05-02 17:44:48'),
(18, 'порошенко', 'poroshenko', '2019-05-02 17:45:04', '2019-05-02 17:45:04'),
(19, 'коломойский', 'kolomoyskiy', '2019-05-02 17:45:35', '2019-05-02 17:45:35'),
(20, 'iphone', 'iphone', '2019-05-02 17:46:14', '2019-05-02 17:46:14'),
(21, 'google', 'google', '2019-05-02 17:46:30', '2019-05-02 17:46:30'),
(22, 'bmw', 'bmw', '2019-05-02 17:48:07', '2019-05-02 17:48:07'),
(23, 'смартфон', 'smartfon', '2019-05-02 18:06:31', '2019-05-02 18:06:31');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'aaa@gmail.com', '$2y$10$ZA2eBSZc3Avb0hhlCvaR9.QnQJkTNjZSuyVeXNxu0cSF6/T8cKcfu', 0, 'UUzA6YqnKRQM48Vdgpd0xQeE7fr9pEJuI7hEiB9fjQQ3vOIZMJJZKXgMLWNn', '2019-04-23 11:23:53', '2019-04-23 11:23:53'),
(2, 'admin', 'admin@gmail.com', '$2y$10$lnZ1URRMoefpDiFPm/jVOOugYeCP/omasTd6oZbZkxQYN/QyWySHa', 1, 'lVQAqnI4jgortifpdSVcBjcYnQiPL3iKBxr4ujMrx5ulYJoClt3irvH7mYre', '2019-04-29 09:27:53', '2019-04-29 09:27:53');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
