# Test task for RoR dev

## Implement a clinic management project

### Types of users:

- patient (User)
- Doctor
- Admin

### The following functionality must be implemented for each type of user:

1. The patient can register, enter his personal account (Profile),
   view a list of doctors by category, make an appointment, and get
   a doctor's appointment after meeting him.

2. The doctor can enter his personal account (Profile), view the list of patients, which
   signed up to provide recommendations to the patient. The physician may refer to a specific category (therapist, cardiologist, etc.).

3. Admin has access to the list of patients and doctors. Can create categories, doctors,
   Assign a specific doctor to a category (can be implemented via ActiveAdmin/Administrate).

### Requirements for authentication and authorization:

- use devise;
- implement login via phone-password;
- use gem cancancan to differentiate user rights;

### Requirements for the category table:

- validation for uniqueness by name;
- the possibility of adding several doctors;

### Requirements for Doctor-Patient tables:

- implement many-to-many communication;
- a doctor can only have 10 open records (simultaneously);
- the record is automatically closed (not deleted) after the doctor writes a recommendation to the user;

### Testing:

- It is necessary to write 3 types of tests model, feature, and request for a test project.
- Use RSpec and Capybara, preferably factory_bot_rails and faker-
- Model. write a phone_number validation test for the Doctor model
- Request. test the create action for any controller
- Feature. log in as a doctor and leave a recommendation for a patient

### General requirements:

- Make a public part for patients and doctors;
- To implement the admin panel, you can use ActiveAdmin;
- Image stored on S3 or Cloudinary;
- Put the project on Heroku and the code on GitHub.
- Send a link + access to the admin part and the public part.

* Bellow Russion Translation

# Тестовое задание для RoR dev

## Реализовать проект по управлению поликлиникой

### Виды пользователей:

- пациент (User)
- врач (Doctor)
- Admin

### Для каждого вида пользователей необходимо реализовать следующий функционал:

1. Пациент может зарегистрироваться, войти в свой личный кабинет (Profile),
   просматривать список врачей по категориям, записаться на прием, получить
   рекомендации от врача после приема.

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
- запись автоматически закрывается (не удаляется) после того, как врач напишет пользователю рекомендацию;

### Тестирование:

- Нужно написать для тестового проекта 3 вида тестов model, feature, request.
- Использовать RSpec и Capybara, желательно factory_bot_rails и faker-
- Модель. написать тест на валидацию phone_number для модели Doctor
- Request. проверить работу экшена create для любого контроллера
- Feature. войти как врач и оставить рекомендацию для пациента

### Общие требования:

- Сделать публичную часть для пациентов и врачей;
- Для реализации админки можно использовать ActiveAdmin;
- Изображение хранить на S3 или Cloudinary;
- Выложить проект на Heroku, а код на GitHub.
- Отправить ссылку + доступы к админ части и публичной части.
