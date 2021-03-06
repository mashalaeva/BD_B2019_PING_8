## АРХАРОВ ДМИТРИЙ ПАВЛОВИЧ БПИ198 ЗАДАНИЕ 3

### 1. Почему любое отношение в реляционной схеме имеет по крайней мере один ключ?
Любое отношение в реляционной схеме имеет хотя бы один ключ, поскольку нам необходимо как-то идентифицировать их и проводить по ним поиск. Таким образом отношения представляет из себя связь между двумя сущностями и требует хотя бы один уникальный ключ, чтобы мы могли определять какое отношение перед нами и итерироваться по ним.

### E/R диаграмы из прошлого задания переведённые в реляционные схемы: *(вместо подчёркивания уникального ключа он будет выделен жирным текстом, так как не нашёл в md подчёркиваний)*

### 1 задание из 2-ой домашки:

**Сущности:**
1. Книга: (**ISBN**, название, год выпуска, автор, кол-во страниц)
2. Копия: (**IDcopy**, позиция на полке)
3. Читатель: (**IDreader**, имя, фамилия, адресс, день рождения)
4. Аренда книги: (**IDrent**, дата возвращения)
5. Категория: (**IDcateg**, название)
6. Издатель: (**IDpubl**, название, адресс)

**Отношения:**

*формат:  
Название; Между какими сущностями; Тип связи; Реляционное описание*

1. Представляет; Книга - Копия книги; N:M; (**ISBN**, **IDcopy**) 
2. Берёт в аренду(сделал merge нескольких отношений осуществляемых через сущность аренды книги); Читатель - Копия книги; N:M; (**IDreader**, **IDcopy**, дата возвращения)
3. Категоризирует; Книга-Категория; 1:N; (ISBN, **IDcateg**) *можно смёрджить*
4. Издатель - Книга; 1:N; (ISBN, **IDpubl**) *можно смёрджить*
5. Является под-категорией; Категория - Категория; 1:N; (IDcateg, **IDcateg**) *можно смёрджить*


### 2 задание, 1 подпункт
**Сущности:**
1. Квартира: (**IDflat**, IDhouse, название)
2. Дом: (**IDhouse**, IDstreet, название)
3. Улица: (**IDstreet**, IDcity, название)
4. Город: (**IDcity**, IDcounty, название)
5. Страна: (**IDcounty**, название)

*Здесь сделал merge всех отношений внутрь сущностей, поскольку они представляли собой включение одного в другое и выражаются в N:1 связи, я отразил их через добавление ещё одного атрибута сущностям - через который можно перейти к более "старшей" сущности*

### 2 задание, 2 подпункт
**Сущности:**
1. Арбитр: (**IDarbitr**, имя)
2. Команда: (**IDteam**, название)

**Отношения:**
1. Судит; Арбитр - Команда; 1:N; (IDarbitr, **IDteam**) *можно смёрджить*
2. Играют между собой; Команда - Команда; N:M; (**IDteam**, **IDteam**)  

### 2 задание, 3 подпункт
**Сущности:**
1. Мужчина: (**IDman**, IDfather, IDmother)
2. Женщина: (**IDwoman**, IDfather, IDmother)

*Здесь также сделал merge всех отношений внутрь сущностей, поскольку они представляли собой включение одного в другое и выражаются в N:1 связи, я отразил их через добавление ещё двух атрибутов сущностям - через которые можно переходить к отцу и матери соответственно*

### 3 задание
**Сущности:**
1. Сущность: (**IDentity**, название)
2. Отношение: (**IDrelat**, название)
3. Аттрибут сущности: (**IDatrEntity**, название, являетсяЧастьюКлюча)
4. Аттрибут отношения: (**IDatrRelat**, название)

**Отношения:**
1. Иметь аттрибут (Сущность); Сущность - Аттрибут сущности; 1:N; (IDentity, **IDatrEntity**) *можно смёрджить*
2. Иметь аттрибут (Отношение); Отношение - Аттрибут отношения; 1:N; (IDrelat, **IDatrRrelat**) *можно смёрджить*
3. Участвовать; Сущность - Отношение; N:M; (**IDentity**, **IDrelat**, функциональность, роль, минимум, максимум)


## 3 задание 3-ей домашней работы, 1 подпункт:
**Сущности:**
1. Station (**Name**, #Tracks)
2. City (**Region**, **Name**)
3. Train (**TrainNr**, Length)

**Отношения:**
1. Start; Train - Station; N:1; (**TrainNr**, NameStart) *можно смёрджить*
2. End; Train - Station; N:1; (**TrainNr**, NameEnd) *можно смёрджить*	 
*эти два отношения можно смёрджить и между друг другом и потом внутрть Train*
3. Connected; Train - Station - Station; N:1:1; (**TrainNr**, Name1, Name2, Departure, Arrival)
4. Lie_in; Station - City; N:1; (**NameST**, NameCI, RegionCI) *можно смёрджить*


## 3 задание, 2 подпункт:
**Сущности:**
1. Station (**StatNr**, Name)
2. Room (**RoomNr**, #Beds, StatNr) *смёрджили Has отношение*
3. Patient (**PatientNr**, Name, Disease)
4. Doctor (**PersNr**, Name, Rank, Area)
5. Caregiver (**PersNr**, Name, Qualification)
6. StationPersonell (**PersNr**, #Name)

**Отношения:**
1. Admission; Patient - Room; N:1; (**PatientNr**, RoomNr, from, to)
2. Treats; Patient - Doctor; N:1; (**PatientNr**, PersNr, DocName) *можно смёрджить*
3. Works_for; StationPersonell - Station; N:1; (**PersNr**, StatNr) *можно смёрджить*
