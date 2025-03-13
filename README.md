# Inlamning1 - Henrik Karlsson YH 2024
Den här databasen hanterar kunder och beställningar för en bokhandel och är döpt till Your_Bookstore.
Databasen bygger på relationerna att: En kund kan göra flera beställningar och att: En beställning innehåller en eller
flera böcker.
För att åstadkomma detta har 4 tabeller skapats där tabellerna är: Kunder, Beställningar, Orderrader och Böcker. 
PK i respektive tabell är KundID, Ordernummer, OrderradID och ISBN.
Det finns relation mellan kunder och beställningar, mellan beställningar och orderrader, mellan böcker och orderrader. Dessa relationer utgörs av FK som är kundID, ordernummer och ISBN. 
Tabellerna är testade och fungerar. 
Endast Kunder och Böcker har fått ett innehåll.
Slutligen har en enkel selectfråga skapats för att testa att det fungerar att hämta och filtrera data.
