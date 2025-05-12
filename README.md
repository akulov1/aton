# Aton test task
## Задание 1. Ansible: Установка и настройка nginx

Папка: ansible/

### Структура:
  - playbook.yml — основной playbook
  - inventory — инвентори-файл (по умолчанию localhost)
  - variables/all.yml — переменные (порт, имя сервера, путь к html)
  - templates/nginx.conf.j2 — шаблон конфига nginx
Запуск из папки ansible/ : "ansible-playbook -i inventory playbook.yml"

## Задание 2: Dockerfile и docker-compose для nginx

Папка: ansible-docker/

### Структура:
- docker-compose.yaml — запуск nginx через Docker Compose
- docker/ — Dockerfile, конфиг nginx, папка для сертификатов
- html/ — пример index.html
- curl_result_80.txt, curl_result_443.txt — примеры вывода curl для проверки

## Задание 3: Bash-скрипт для мониторинга диска

Папка: bash/

SMTP-параметры указываются в начале disk_alert.sh

## Задание 4: CI/CD pipeline

Папки: CICD/ - скриншот логов успешно выполненого пайплайна; .github/workflows/ - код пайплайна


В случае вопросов:

telegram @tweezyx
