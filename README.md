# Тестовое задание для RoR dev

## Реализовать проект по управлению поликлиникой

### Виды пользователей:

- пациент (User)
- врач (Doctor)
- Admin

### Для каждого вида пользователей необходимо реализовать следующий функционал:

1. Пациент может зарегистрироваться, войти в свой личный кабинет (Profile),
просматривать список врачей по категориям, записаться на прием, получить
рекомендации от врача после приема

2. Врач может войти в личный кабинет (Profile), просмотреть список пациентов, что
записались, предоставить рекомендации пациенту. Врач может относиться к определенной
категории (терапевт, кардиолог и т.п.).

3. Админ имеет доступ к списку пациентов и врачей. Может создавать категории, врачей,
асайнити определенного врача в категорию (можно реализовать через ActiveAdmin/Administrate).

### Требования к аутентификации и авторизации:

- использовать devise;
- реализовать login через phone-password;
- использовать gem cancancan для разграничения прав пользователей;

### Требования к таблице категорий:

- валидация на уникальность по имени;
- возможность добавления нескольких врачей;

### Требования к таблицам Врач-Пациент:

- реализовать связь many-to-many;
- у врача может быть только 10 открытых записей (одновременно);
- запись автоматически закрывается (не удаляется) после того, как врач напишет
пользователю рекомендацию;

### Тестирование:
-
Нужно написать для тестового проекта 3 вида тестов model, feature, request.
Использовать RSpec и Capybara, желательно factory_bot_rails и faker-
-
Модель. написать тест на валидацию phone_number для модели Doctor
Request. проверить работу экшена create для любого контроллера
Feature. войти как врач и оставить рекомендацию для пациента

### Общие требования:
-
сделать публичную часть для пациентов и врачей;

Для реализации админки можно использовать ActiveAdmin;
Изображение хранить на S3 или Cloudinary;
Выложить проект на Heroku, а код на GitHub. 
Отправить ссылку + доступы к админ части и публичной части.
