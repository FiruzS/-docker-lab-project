# Берем маленький образ Linux
FROM alpine:latest

# Устанавливаем нужные программы
RUN apk add --no-cache bash curl

# Копируем наш скрипт мониторинга
COPY docker_monitor.sh /docker_monitor.sh

# Делаем скрипт запускаемым
RUN chmod +x /docker_monitor.sh

# Показываем что образ собран
CMD ["echo", "✅ Docker образ готов! Запустите: ./docker_monitor.sh"]
