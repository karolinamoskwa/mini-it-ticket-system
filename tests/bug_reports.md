Bug Reports – Mini IT Ticket System

BUG-01
Tytuł: Brak walidacji pola email przy tworzeniu użytkownika  
Środowisko: Test  
Kroki:
1. Wejście do formularza tworzenia użytkownika
2. Wpisanie niepoprawnego emaila
3. Zapis  
Oczekiwany rezultat:
System powinien wyświetlić komunikat o błędzie  
Rzeczywisty rezultat:
System zapisuje użytkownika bez walidacji  
Priorytet: Średni  
Status: Nowy  

---

BUG-02
Tytuł: Brak daty zamknięcia przy statusie „Zamknięte”  
Kroki:
1. Zmiana statusu zgłoszenia na „Zamknięte”
2. Zapis  
Oczekiwany rezultat:
System zapisuje datę zamknięcia  
Rzeczywisty rezultat:
Pole closed_at pozostaje NULL  
Priorytet: Wysoki  
Status: Nowy
