# Задание 9

## Задача 1

### Условие

DBMS выполняет следующий запрос:

``` sql
SELECT * FROM emp WHERE salary = 200;
```

Предположим, у вас есть индекс B-дерева "emp.salary".
Кроме того, предположим, что таблица содержит 100 миллионов кортежей, хранящихся на 1 миллионе страниц на диске
(т.е. в среднем 100 кортежей на страницу).
Далее предположим, что у вас имеется бесконечное количество доступной основной памяти и что все B-дерево изначально
находится в основной памяти, в то время как ни одна страница таблицы не находится в основной памяти.
Предположим, что произвольный доступ к диску занимает 28 миллисекунд,
в то время как последовательный доступ к диску занимает всего 0,28 миллисекунды.

* а) Определите стоимость (как общее время доступа к жесткому диску) ответа на этот запрос при использовании B-дерева
для ответа на запрос. Для этого укажите формулу, которая получает в качестве параметра количество кортежей с содержимым 200.
* б) Для каких значений параметров (количество сотрудников с содержанием 200) использование B-дерева было бы выгоднее по
сравнению с полным сканированием таблицы? Насколько лучше было бы сканирование полной таблицы, чем сканирование индекса,
если бы все 100 миллионов сотрудников имели зарплату 200?

### Решение

а) Обозначим параметр "количество кортежей" за `n`; количество всех страниц за `s`.

`s = 1 000 000`

Тогда стоимость ответа на запрос можно посчитать по формуле

`s * (1 - (1 - 1/s)^n) * 28`

где `(1 - 1/s)^n` — вероятность того, что некая страница **не** содержит в себе искомый котреж;

`1 - (1 - 1/s)^n` — вероятность того, что некая страница содержит в себе искомый кортеж.

Тогда `s * (вероятность того, что страница нужна, поскольку она содержит искомый кортеж)` — это количество нужных страниц.

Поскольку обращаться мы будем не последовательно, а произвольно, нужно домножить получившуюся формулу
на 28 миллисекунд. Тогда мы получим время доступа к жесткому диску при ответе на данный запрос.

Подставим значение s в формулу:

`s * (1 - (1 - 1/s)^n) * 28 = 1 000 000 * (1 - (1 - 1/1 000 000)^n) * 28 = 28 000 000 * (1 - (1 - 10^(-6))^n)`

**Ответ:** `s * (1 - (1 - 1/s)^n) * 28 = 28 000 000 * (1 - (1 - 10^(-6))^n)`

б) Поскольку B-дерево хранится в основной памяти, а не на диске, при обращении к B-дереву тратить дополнительное время на обращение к диску не нужно.

Чтобы прочитать данные со всех страниц, последовательно их сканируя, необходимо потратить 28 миллисекунд на доступ к первой странице,
а потом `(0.28 милисекунд * на количество всех страниц)` миллисекунд для чтения всех страниц 
=> `28 + 0.28 * 1 000 000 = 280028 миллисекунд = 280,03 секунд = 4,67 минут` нужно потратить на сканирование всех страниц подряд.

Составим неравенство для ответа на первый вопрос:

`28 000 000 * (1 - (1 - 10^(-6))^n) < 280028`

`-28 000 000 * (1 - 10^(-6))^n < -27 719 972`

`(1 - 10^(-6))^n < 989 999 / 1 000 000`

`n < log_(1 - 1/10^(-6)) (989 999 / 1 000 000)`

`n < 10051.341`

`n` принадлежит диапазону `[1, 10 051]`

Использование B-дерева было бы выгоднее по сравнению с полным сканированием таблицы для `n` из диапазона `[1, 10 051]`

Если все сотрудники имеют зарплату 200, то при полном сканировании таблицы, как было посчитано ранее, мы бы потратили 280 028 миллисекунд,
а при сканировании индекса мы бы потратили `28 000 000 * (1 - (1 - 10^(-6))^(100 000 000)) = 2.8 * 10^(7) = 28 000 000 миллисекунд`

=> в данной ситуации сканирование полной таблицы быстрее сканирования индекса на `28 000 000 - 280 028 = 27 719 972 миллисекунд`.

**Ответ:**
* `[1, 10 051]`;
* на `27 719 972 миллисекунд`.

## Задача 2

### Условие

Для каждого из следующих операторов укажите максимальный размер буфера основной памяти, который он может использовать,
и минимально возможный размер буфера основной памяти, оба в зависимости от размера ввода.

* Nested-loop Join
* (Grace) Hash Join
* Sort Merge Join
* Table Scan
* Index Scan (Доступ к таблице с помощью B-дерева. Внимание: вам нужны два буфера: один для B-дерева и один для блоков таблицы)

Какую стратегию замены вы бы использовали?

### Решение

Пусть граница максимального размера буфера основной памяти равна `M`, размер одного блока `X`.

Рассмотрим две абстрактные таблицы с размерами `A` и `B` соответственно, причем `A <= B`. 

**Nested-loop Join**

* Максимальный размер памяти = `A + B` — поскольку мы будем каждой строке из первой таблицы ставить в соответствие каждую строку из второй таблицы, нам каждая из них может потребоваться в основной памяти (при условии, что `A + B <= M`).
* Минимальный размер памяти = `X + X = 2 * X` — будем выгружать по одному блоку из каждой таблицы.

**(Grace) Hash Join**

* Максимальный размер памяти = `A + B` при условии, что `A + B <= M`. Иначе макимальный размер памяти = `M`, и в ходе алгоритма мы будем выгружать в оснвную память части каждой из таблиц (тогда мы последовательно выгрузим `M / A` частей первой таблицы, `M / B` второй); каждая часть, соответственно, будет весить `<= M`.
* Минимальный размер памяти = `X`, поскольку одномоментно в памяти будет храниться один блок, с которым будем работать (отталкиваюсь от того, что уже вычисленные хеш-ключи не находятся в основной памяти)

[Ссылка](https://cwiki.apache.org/confluence/display/Hive/Hybrid+Hybrid+Grace+Hash+Join%2C+v1.0) на сайт, с которого взято описание алгоритма.

**Sort Merge Join**

* Максимальный размер памяти = `A + B` — выгрузка двух таблиц в основную память
* Минимальный размер памяти = размеру двух строчек (по одной из каждый таблицы)

[Ссылка](https://use-the-index-luke.com/sql/join/sort-merge-join) на сайт, с которого взято описание алгоритма.

**Table Scan**

* Максимальный размер памяти = `A` для первой таблицы, `B` для второй — выгрузка всей таблицы в основную память
* Минимальный размер памяти = `X` — выгрузка по одному блоку

**Index Scan**

* Максимальный размер памяти = `A + размер B-tree` для первой таблицы, `B + размер B-tree` для второй — выгрузка всей таблицы в основную память
* Минимальный размер памяти = `X + размер нужных узлов B-tree` — выгрузка по одному блоку

Наиболее оптимальной стратегией замены мне кажется LRU-K с K = 2 (K равно именно 2, потому что это оптимальный вариант с точки зрения затрат ресурсов). 
В данной стратегии происходит анализ того, какие данные использовались последние K раз, т.е. наиболее часто используемые данные будут обладать большим весом. 
В случае, если данные не используются часто, алгоритм не хранит их в кеше. Таким образом, например, при разовом сканировании таблицы важные данные вытеснены не будут.

## Задача 3

### Условие

Предположим, у нас есть следующая реляционная схема:

``` sql
Customer(Cid, Name)
Order(Oid, Customer, Volume)
```

Существует 1000 кортежей клиентов и 100000 кортежей заказов. Размер каждого кортежа составляет 100 байт.

Кроме того, предположим, что у нас есть следующий запрос, который запрашивает общий объем заказов Клиента(Customer) по имени “Alex”.:

``` sql
SELECT sum(o.Volume)
FROM Customer c,
     Order o
WHERE c.Cid = o.Customer AND
      c.Name = “Alex”;
```

* а) Переведите этот SQL-запрос в выражение реляционной алгебры. (Подсказка: вы можете использовать функцию sum.)
* б) Объясните, как вы будете реализовывать каждый оператор, т.е. ипользуйте ключевое слово, которое определяет, какой алгоритм вы будете использовать для реализации оператора. (Например, 2-фазная внешняя сортировка (2-Phase External Sort))
* в) Для каждого оператора укажите объем основной памяти, который вы бы выделили. Почему? Сколько памяти вам нужно для обработки всего запроса?

### Решение

а) 
``` sql 
sum(projection_{Order.Volume} (selection_{Customer.Name = "Alex" && Customer.Cid = Order.Customer} (Customer x Order)))
```

По-хорошему вместо декартова произведения лучше было бы использовать join, но если идти четко по представленному SQL-запросу, то в реляционной алгебре это будет именно декартово произведение.

б) 
* projection — выбор нужного столбца для вывода результата
* selection с условием — full table scan для поиска нужный записей
* sum — обыкновенное сложение внутри цикла

Прежде чем говорить про то, какой Join я бы использовала вместо декартового произведения, стоит рассмотреть возможные вариации, между которыми я выбирала:

1) Nested-loop Join — предпочтителен в случае, если одна из сторон соединения содержит не так много строк. Также это был бы единственный подходящий вариант, если бы условие соединения не использовало оператор равенства.
2) Hash Join — предпочтителен в случае, если условие соединения использует оператор равенства, и обе стороны соединения большие.
3) Sort Merge Join — предпочтителен в случае, если условие соединения использует оператор равенства, обе стороны соединения большие, но могут быть эффективно отсортированы по условию соединения (например, если в выражениях, используемых в столбце соединения, есть индекс, как в нашем случае).

При худшем раскладе у нас в ответе будет 1000 строк, потому что
* мы соединяем по Cid и не можем по количеству записей выйти за пределены строк в Customer
* в теории может получиться так, что каждый Customer будет с именем Alex

Поскольку в ответе у нас будет не так много записей, лучше всего использовать Nested-loop Join. Если бы записей в ответе было значительно больше, можно было бы использовать Sort Merge Join, поскольку для этого пришлось бы всего лишь отсортировать инты.

## Задача 4

### Условие

Предположим, у нас есть следующий запрос:

``` sql
SELECT * FROM R, S, T
WHERE R.rid = S.sid AND 
      S.sid = T.tid AND
      T.tid = R.rid
```
* а) Укажите 3 разных плана запроса для этого запроса (join method).
* б) Для каждого данного плана в предыдущей части укажите размер каждой таблицы, чтобы каждый план был оптимальным.
* в) Возьмите один из планов из предыдущей части и предположите, что ни одна из таблиц не помещается в основную память, т.е. память составляет не более половины размера самой маленькой таблицы. В этих условиях, как вы распределяете буферы? Какова будет ваша политика замены страниц?

### Решение

а) `(R Nested-loop Join S) Nested-loop Join T`

`(R Nested-loop Join S) Sort Merge Join T`

`(R Grace Hash Join S) Grace Hash Join T`

б) `R = 5, S = 10, T = 50`

`R = 100, S = 100, T = 50 000`

`R = 1 000 000, S = 1 000 000, T = 500 000`

в) Рассмотрим третий план: поскольку он использует Grace Hash Join, изначально предполагается, что таблицы будут выгружаться частями, подходящими под размер буфера, и для каждой выгружаемой части будет строиться хеш-таблица.

Я бы использовала ту же стратегию замены, что и ранее: LRU-K с K = 2, поскольку наиболее часто используемые данные не будут вытесняться при сканировании различных частей таблиц.
