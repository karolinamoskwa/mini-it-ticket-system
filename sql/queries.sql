-- Wszystkie zgłoszenia z użytkownikami
SELECT u.name, t.title, s.status_name
FROM tickets t
JOIN users u ON t.id_user = u.id_user
JOIN status s ON t.id_status = s.id_status;

-- Liczba zgłoszeń na kategorię
SELECT c.category_name, COUNT(t.id_ticket) AS liczba_zgloszen
FROM tickets t
JOIN categories c ON t.id_category = c.id_category
GROUP BY c.category_name;

-- Liczba zgłoszeń według statusu
SELECT s.status_name, COUNT(t.id_ticket) AS ilosc
FROM tickets t
JOIN status s ON t.id_status = s.id_status
GROUP BY s.status_name;

-- Zgłoszenia wysokiego priorytetu
SELECT t.title, p.priority_name
FROM tickets t
JOIN priorities p ON t.id_priority = p.id_priority
WHERE p.priority_name = 'Wysoki';

-- Zgłoszenia zamknięte
SELECT t.title, t.closed_at
FROM tickets t
JOIN status s ON t.id_status = s.id_status
WHERE s.status_name = 'Zamknięte';

-- Top 3 kategorie problemów
SELECT c.category_name, COUNT(*) AS liczba
FROM tickets t
JOIN categories c ON t.id_category = c.id_category
GROUP BY c.category_name
ORDER BY liczba DESC
LIMIT 3;

-- Zgłoszenia nierozwiązane dłużej niż 48h
SELECT title, created_at
FROM tickets
WHERE closed_at IS NULL
AND created_at < NOW() - INTERVAL 48 HOUR;

-- Średni czas rozwiązania zgłoszenia
SELECT AVG(TIMESTAMPDIFF(HOUR, created_at, closed_at)) AS avg_resolution_time
FROM tickets
WHERE closed_at IS NOT NULL;

-- Użytkownicy z największą liczbą zgłoszeń
SELECT u.name, COUNT(t.id_ticket) AS liczba
FROM tickets t
JOIN users u ON t.id_user = u.id_user
GROUP BY u.name
ORDER BY liczba DESC;