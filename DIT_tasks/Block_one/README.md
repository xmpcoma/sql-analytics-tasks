# 🎵 Блок 1: SQL-аналитика

SQL-запросы для анализа музыкального сервиса.

## 📋 Задачи

**Task 1:** Самый прослушиваемый Rock-альбом  

**Task 2:** Топ-20% по хитам  

**Task 3:** Альбом с коллаборациями  

**Task 4:** Динамика по месяцам  

**Task 5:** Жанры по регионам  

## 🗄️ База данных

**Файл:** data/mosmusic_final_collabs_multiple_albums.db

**Таблицы:** artists, albums, songs, song_artists, genres, song_genres, listening_logs

## 🚀 Запуск

**DBeaver:**
1. Открыть файл БД
2. Queries → любой .sql файл
3. Ctrl+Enter

**Консоль:**
```bash
sqlite3 data/mosmusic_final_collabs_multiple_albums.db < queries/task_1_rock_album.sql
