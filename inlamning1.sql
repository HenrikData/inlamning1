/*
Den här databasen är skapad av Henrik Karlsson YH2024.
*/

/*
Jag skapar databasen och döper den till "Your_Bookstore".
*/

CREATE DATABASE Your_Bookstore;
USE Your_Bookstore;

-- Skapa tabellen Kunder
CREATE TABLE Kunder (
    KundID INT AUTO_INCREMENT PRIMARY KEY, -- Primär nyckel, skapar unikt id för varje kund
    Namn VARCHAR(100) NOT NULL, -- textsträng med max 100 tecken
    Epost VARCHAR(255) UNIQUE NOT NULL, -- måste vara unikt
    Telefon VARCHAR(100) NOT NULL, -- textsträng med max 100 tecken
    Adress VARCHAR(255) NOT NULL -- textsträng med max 250 tecken
);

-- Skapa tabellen Böcker
CREATE TABLE Böcker (
    ISBN VARCHAR(100) NOT NULL PRIMARY KEY,    
    Författare VARCHAR(100),
    Titel VARCHAR(255) NOT NULL,
    Pris DECIMAL(10,2) NOT NULL CHECK (Pris > 0), -- tal med max 10 siffror inkl decimal. pris måste vara större än 0
    Lagerstatus INT NOT NULL
);

-- Skapa tabellen Beställningar
CREATE TABLE Beställningar (
    Ordernummer INT AUTO_INCREMENT PRIMARY KEY,
    KundID INT NOT NULL, -- samband med FK längst ner i denna tabell
    Datum TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- den aktuella tiden anges i samband med ordern
    Totalbelopp DECIMAL(10,2) NOT NULL CHECK (Totalbelopp > 0),
    FOREIGN KEY (KundID) REFERENCES Kunder(KundID) -- främmande nyckel ifrån tabellen kunder
);

-- Skapa tabellen Orderrader

CREATE TABLE Orderrader (
    OrderradID INT AUTO_INCREMENT PRIMARY KEY,
    Ordernummer INT NOT NULL, -- samband med FK längre ner i denna tabell
    ISBN VARCHAR(100) NOT NULL, -- samband med FK längre ner i denna tabell
    Antal INT NOT NULL CHECK (Antal > 0),
    Delbelopp DECIMAL(10,2) NOT NULL CHECK (Delbelopp > 0),
    FOREIGN KEY (Ordernummer) REFERENCES Beställningar(Ordernummer), -- främmande nyckel kopplad till tabellen beställningar
    FOREIGN KEY (ISBN) REFERENCES Böcker(ISBN) -- främmande nyckel kopplad till tabellen böcker
);


-- Infoga data i tabellen Kunder
INSERT INTO Kunder (Namn, Epost, Telefon, Adress) VALUES
('Matilda Andersson','anna@email.com','0707-610 632','Champinjongatan 4 386 32 Färjestaden'),
('Erik Ericsson','erik@email.com','0763-848 833','Forellstigen 7 385 93 Köpingsvik'),
('Solveig Karlsson','solveig.k@spray.se','0701-377 455','Solstigen 9 458 79 Borgholm'),
('Mats Magnusson','mats@epost.nu','0708-133 078','Kungsvägen 37 182 39 Kalmar');

-- Infoga data i tabellen Böcker
INSERT INTO Böcker (ISBN, Författare, Titel, Pris, Lagerstatus) VALUES
('978-91-29-65770-8', 'Astrid Lindgren', 'Min Min Mio', '179', '49'),
('978-91-1-304767-6', 'Michael Connelly', 'Prövningen', '99', '600'),
('978-91-7679-543-9', 'Lars Wilderäng', 'Höstsol','224', '1000');

-- Hämtar data över böcker som har ett pris överstigande 100 kr i tabellen böcker
SELECT * FROM Böcker WHERE Pris > 100; 
