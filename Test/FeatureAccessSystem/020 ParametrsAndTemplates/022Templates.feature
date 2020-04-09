#language: ru
@tree


Функционал: _022 ограничение доступа с помощью шаблонов

Как пользователь
Я хочу ограничить доступ по реквизитам объектов в режиме предприятия
Для настройки прав доступа


Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий



Сценарий: _022001 проверка графического интерфейса работы с шаблонами
    * Открытие перечня ролей
        И я открываю навигационную ссылку 'e1cib/list/Справочник.Roles_AccessRoles'
    * Создание новой роли путем копирования
        И в таблице "List" я перехожу к строке:
            | 'Наименование'             |
            | 'Роль1' |
        И в таблице "List" я нажимаю на кнопку с именем 'ListКонтекстноеМенюСкопировать'
    * Проверка открытия окна добавления ограничения по шаблону
        И я перехожу к закладке "Матрица ролей"
        И в таблице "RolesEdit" я перехожу к строке:
            | 'Объект'         |
            | 'Справочник' |
        И в таблице "RolesEdit" я разворачиваю текущую строку
        И в таблице "RolesEdit" я перехожу к строке:
            | 'Объект'         |
            | 'Справочник1' |
        И в таблице "RolesEdit" я активизирую поле "Изменение"
    * Проверка открытия окна отладки шаблона
        И в таблице "RestrictionByConditionMatrix" я нажимаю на кнопку 'Добавить ограничение'
        И в таблице "RestrictionByConditionMatrix" я перехожу к первой строке
        И я нажимаю на кнопку открытия поля с именем "RestrictionByConditionConditionMatrix"
        Тогда элемент формы с именем "CurrentTableName" стал равен 'Справочник.Справочник1'
        И     элемент формы с именем "CurrentRightName" стал равен 'Изменение'
        И     элемент формы с именем "RLS" стал равен ''
        Тогда в таблице "Templates" количество строк "равно" 0
    * Проверка перехода по вкладкам
        И я перехожу к закладке "Отладка"
        И я перехожу к закладке "BSL Код"
        И я перехожу к закладке "RLS Просмотр"
        И я перехожу к закладке "Выбранный шаблон"
        И я перехожу к закладке "Параметры сеанса"
        И я закрыл все окна клиентского приложения