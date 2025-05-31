## Installationsanleitung
Diese Installationsanleitung beschreibt die Installation der Softwareumgebung, Einrichtung der relationalen Datenbank für die Buchtausch-App und Testabfragen. Ziel ist es, alle Tabellen, Beziehungen, Trigger und Testdaten korrekt im gewählten DBMS zu implementieren und erste Abfragen durchführen zu können.

### Installation der Softwareumgebung
Als Voraussetzung zur Erstellung der Datenbank wird eine SQL basierte Softwareumgebung benötigt. Beispielsweise kann XAMPP in der aktuellen Version unter [XAMPP Download](https://www.apachefriends.org/index.html) abgerufen und je nach genutztem Betriebssystem installiert werden. XAMPP ist eine kostenlose Open Source Anwendung und bestehend u.a. aus Maria DB, einem Managementsystem für relationale Datenbanken. Die Installation wird interativ durchgeführt und kann unter Zuhilfenahme der beschriebenen Dokumentation und FAQ erfolgen ([Windows](https://www.apachefriends.org/de/faq_windows.html), [Linux](https://www.apachefriends.org/de/faq_linux.html), [OS | Apple](https://www.apachefriends.org/de/faq_osx.html)). Wichtig bei der Vorbereitung zur Installation ist die Auswahl aller Komponenten, des Speicherorts und der Sprache. Die ersten zwei Punkte werden meistens als Default korrekt ausgewählt und sollte nicht geändert werden. Mögliche Einschränkungen durch ein Anti Virus oder Firewall Programm können ein kurzzeitiges Deaktivieren dieser erforderlich machen.

Nach der erfolgreichen Installation kann das XAMPP Control Panel als App geöffnet werden, mit welchem die Anwendung gestartet wird. Zu Beginn wird Apache und danach MySQL gestartet. Mit „Admin“ unter MySQL startet die Webanwendung. Es öffnet sich im Standard Browser die Startseite von phpMyAdmin.  
![image](https://github.com/user-attachments/assets/306fdd5f-f0cb-4016-9374-76bc5e634c53)
Mit „Neu“ kann eine Datenbank mit eindeutigem Namen angelegt werden. Es wird direkt in die Datenbank gewechselt.
![image](https://github.com/user-attachments/assets/1ef0e2d5-9e6d-4eda-a36b-08c2aea75ed5)


### Implementierung über SQL
Wer über SQL Kenntnisse verfügt, kann die Datenbank manuell über den Reiter „SQL“ anlegen. Für das selbstständige Programmieren sind mindestens SQL Grundlagen notwendig, um die Datenbank in ihrer Komplexität und Aufbau zu verstehen.
Tabellen werden durch CREATE TABLE initiiert und durch weitere Schlüsselwörter für Datentypen, Primärschlüsseln und Fremdschlüsseln ergänzt. Zu beachten gilt hierbei die logisch einzuhaltende Reihenfolge, bei welchen die Beziehungen zwischen den Tabellen gemäß ERM berücksichtigt werden. Beispielsweise müssen die Tabellen Land, Stadt, Adresse vor der Tabelle Userdata erstellt werden, um spätere Korrekturen zu vermeiden.

![image](https://github.com/user-attachments/assets/429eccf6-cffa-4ae4-920a-1e0863c6179c)

Nach Erstellung der Tabellenstruktur können nun die Trigger der Tabellen geschrieben und ausgeführt werden, um bestimmte Verhaltensweisen vorzuschreiben. Trigger werden benötigt, um beim Einfügen von neuen Daten, Ändern und Löschen in den Entitäten eine Aktion auszulösen. Oft wird zusätzlich ein DELIMITER benutzt, welches das Trennzeichen Semikolon ; ändert, sodass dieses nicht als Befehlsende angesehen wird. Somit wird der komplette Ausdruck als ein Befehl erkannt. Sobald alle Tabellen gemäß ERM erstellt wurden, können Daten mit INSERT INTO ebenfalls im „SQL“ Reiter eingefügt werden.

![image](https://github.com/user-attachments/assets/72915254-a0c2-442a-bdb4-5bf362abbe2c)

### Implementierung über eine SQL-Datei
Sofern keine oder wenig Programmierkenntnisse vorliegen, ist eine Implementierung durch eine SQL-Datei empfehlenswert, sofern diese vorliegt. Dabei wird in der erstellen Datenbank zum Reiter „Importieren“ gewechselt und die entsprechende SQL-Datei ausgewählt. Die Endung soll dabei auf .sql lauten. Alle sonstigen Einstellungen können als Default Werte übernommen und durch „Importieren“ abgeschlossen werden.

![image](https://github.com/user-attachments/assets/f3a6b021-1d48-420c-bf7c-931dff412b21)

Nach erfolgreichem importieren sind die Tabellen und Daten bereits vollständig vorhanden.

### Test der Datenbank
Um eine korrekte Erstellung der Datenbank zu überprüfen, können verschiedenste Abfragen durchgeführt werden. Dabei kann man sich einen konkreten Testfall überlegen oder selbstständig probieren. 
Beispielsweise sind folgende Testabfragen sind möglich:
- Abfrage der Nutzerdaten\
SELECT UD.FirstName, UD.LastName, UD.MobileNumber, A.Street, A.HouseNumber, CT.Postcode, CT.Name AS City, CY.Name AS Country, LD.EmailAddress, LD.Passwort FROM userdata UD INNER JOIN logindata LD USING(LoginID) INNER JOIN address A USING(AddressID) INNER JOIN city CT USING(CityID) INNER JOIN country CY USING(CountryID);

- Abfrage der Büchersammlung\
SELECT B.Title, B.ISBN, NP.Pages, BC.Name AS Cover, W.WeightInGrams, D.LengthWidthHeightInCm, YP.Year AS YearOfPublication, A.FirstName, A.LastName, P.Name AS Publisher, G.Genre, L.Name AS Language, Q.Name AS Quality, S.Name AS Status, BS.AvailableFrom FROM book B INNER JOIN publisher P USING(PublisherID) INNER JOIN genre G USING (GenreID) INNER JOIN language L USING(LanguageID) INNER JOIN numberofpages NP USING(PageID) INNER JOIN bookcover BC USING(CoverID) INNER JOIN weight W USING(WeightID) INNER JOIN dimensions D USING(DimensionsID) INNER JOIN yearofpublication YP USING(YearID) INNER JOIN booksummary BS USING(BookID) INNER JOIN bookquality Q USING(QualityID) INNER JOIN status S USING(StatusID) INNER JOIN bookauthor BA USING(BookID) INNER JOIN author A USING(AuthorID);

- Suche nach Büchern über einen Filter\
SELECT B.Title, YP.Year AS YearOfPublication, NP.Pages, G.Genre FROM booksummary INNER JOIN book B USING(BookID) INNER JOIN yearofpublication YP USING(YearID) INNER JOIN numberofpages NP USING(PageID) INNER JOIN genre G USING(GenreID) WHERE Booksummary.StatusID=1;
