CREATE TABLE `order`
(   orderID INTEGER AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(50),
    orderDate DATE,
    price INTEGER
);


INSERT INTO `order` VALUES
(null, 'Geitost', '2008-11-11 ', 5),
(null, 'Mozzarella di Giovanni' , '2008-11-11 ', 7),
(null, 'Mascarpone Fabioli', '2008-10-29 ', 8),
(null, 'Camembert Pierrot', '2008-11-11 ', 9);


/*** Beispiel for Temporal DATE
   Filtert genau das gesuchte Datum raus, daher nur 3 von den 4 -> Geitost, Mozarella di Giovanni, Camembert***/
SELECT * FROM `order`
WHERE orderDate='2008-11-11';

/***Beispiel für Numeric INT
  Sucht die ID heraus -> Camembert***/
SELECT * FROM `order`
WHERE orderID=4;

/*** Beispiel für Text
  Filtert alle Produkte mit dem Preis von 8 -> Mascarpone Fabioli***/
SELECT * FROM `order`
WHERE price= 8;


/*** Beispiel für möglichen FLOAT
  gibt dem Datum eine Zeit hinzu ***/
SELECT CAST ('2008-11-11' AS DATETIME)

/*DROP TABLE `order`*/

