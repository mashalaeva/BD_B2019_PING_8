# Практическое задание №1

## Рычков Кирилл, БПИ198

## Функциональные требования 

* Регистрация или вход в личный аккаунт
* Вврд личных данных(карта, паспорт)
* Если пользователь продавец:
  * Возможность создать аукцион
  * Выложить картинку товара 
  * Выложить описание товара
  * Задать начальник цену товара
  * Назначить время начала аукциона
  * Возможность задать лимит по количеству покупателей, которые хотят участвовать на аукционе
* Если пользователь покупатель:
  * Предоставляется список возможных доступных аукционов
  * Покупатель может зайти на интересующий его аукцион 
  * Если пользователь зашел, и начался аукцион, у покупателя должна быть возможность предложить цену
* Таймер, отвечающий за интервал между ставками
* Покупатель, который выиграл, обязан оплатить товар с помощью карты
* Пользователю предоставляется чат и номер продавца

## Роли пользователей
- Продавец -  выставляет товар на аукцион, задаёт начальную цену, время начала
- Покупатель - имеет возможность побороться за товар на аукционе, предлагать цену, опалата товара

## Объекты для хранения данных и связи между ними
- Аукцион - начальная цена, товар
- Пользователь - имя, фамилия, паспорт, карта
- Ставка - цена ставки, к какому пользователю пренадлежит, какой товар

![drawSQL-export-2021-09-12_04_18](https://user-images.githubusercontent.com/36132918/132967517-f09122e4-5de4-433e-9f8d-039b61ce5d1e.png)

