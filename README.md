# Inlamning1 - Henrik Karlsson YH 2024
Den här databasen hanterar kunder och beställningar för en bokhandel och är döpt till Your_Bookstore. <BR>
Databasen bygger på relationerna att: En kund kan göra flera beställningar och att: En beställning innehåller en eller
flera böcker. <BR>
För att åstadkomma detta har 4 tabeller skapats där tabellerna är: Kunder, Beställningar, Orderrader och Böcker. <BR>
PK i respektive tabell är KundID, Ordernummer, OrderradID och ISBN. <BR>
Det finns relation mellan kunder och beställningar, mellan beställningar och orderrader, mellan böcker och orderrader. Orderrader är länken mellan böcker och beställningar. Relationerna knyts samman av FK som är kundID, ordernummer och ISBN. <BR>
Tabellerna är testade och fungerar. <BR>
Endast Kunder och Böcker har fått ett innehåll. <BR>
Slutligen har en enkel selectfråga skapats för att testa att det fungerar att hämta och filtrera data.
