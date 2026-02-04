INSERT INTO users (name, email, department, role) VALUES
('Anna Kowalska', 'anna.kowalska@firma.pl', 'HR', 'User'),
('Jan Nowak', 'jan.nowak@firma.pl', 'IT', 'Admin'),
('Karol Zieliński', 'karol.zielinski@firma.pl', 'Finanse', 'User');

INSERT INTO categories (category_name) VALUES
('Sprzęt'),
('Oprogramowanie'),
('Sieć'),
('Konto użytkownika');

INSERT INTO status (status_name) VALUES
('Nowe'),
('W trakcie'),
('Zamknięte');

INSERT INTO priorities (priority_name) VALUES
('Niski'),
('Średni'),
('Wysoki');

INSERT INTO tickets (title, description, created_at, closed_at, id_user, id_category, id_status, id_priority) VALUES
('Brak dostępu do sieci', 'Komputer nie łączy się z WiFi', NOW(), NULL, 1, 3, 1, 3),
('Nie działa drukarka', 'Drukarka nie reaguje na polecenia', NOW(), NULL, 2, 1, 2, 2),
('Reset hasła', 'Użytkownik zapomniał hasła do systemu', NOW(), NOW(), 3, 4, 3, 1);
