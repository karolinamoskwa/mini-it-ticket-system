Test Cases – Mini IT Ticket System

TC-01: Dodanie nowego zgłoszenia
Opis: Sprawdzenie poprawności dodania nowego zgłoszenia do systemu  
Kroki:
1. Użytkownik loguje się do systemu
2. Przechodzi do formularza „Nowe zgłoszenie”
3. Wprowadza dane
4. Zapisuje zgłoszenie  
Oczekiwany rezultat:
Zgłoszenie zostaje zapisane w bazie danych

TC-02: Przypisanie kategorii do zgłoszenia
Opis: Sprawdzenie poprawności przypisania kategorii  
Kroki:
1. Utworzenie nowego zgłoszenia
2. Wybranie kategorii „Sprzęt”
3. Zapis  
Oczekiwany rezultat:
Zgłoszenie posiada przypisaną kategorię

TC-03: Zmiana statusu zgłoszenia
Opis: Zmiana statusu z „Nowe” na „W trakcie”  
Kroki:
1. Otworzenie zgłoszenia
2. Zmiana statusu
3. Zapis  
Oczekiwany rezultat:
Status zgłoszenia zmienia się poprawnie

TC-04: Zamknięcie zgłoszenia
Opis: Zamknięcie zgłoszenia  
Kroki:
1. Zmiana statusu na „Zamknięte”
2. Zapis  
Oczekiwany rezultat:
System zapisuje datę zamknięcia zgłoszenia

TC-05: Dodanie zgłoszenia bez tytułu
Oczekiwany rezultat:
System powinien wyświetlić komunikat o błędzie

TC-06: Zbyt długi tytuł zgłoszenia
Oczekiwany rezultat:
System nie zapisuje zgłoszenia

TC-07: Brak wybranej kategorii
Oczekiwany rezultat:
System wymusza wybór kategorii

TC-08: Zamknięcie zgłoszenia bez rozwiązania
Oczekiwany rezultat:
System nie pozwala zamknąć zgłoszenia

TC-09: Niepoprawny email użytkownika
Oczekiwany rezultat:
System waliduje adres email
