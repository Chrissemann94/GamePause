USE WebShop;

INSERT INTO Category
VALUES ('Konsole', 20), ('Videospiel', 20), ('Zubehör', 20);

INSERT INTO Manufacturer
VALUES ('Nintendo', null, null),
('Playstation', null, null),
('XBox', null, null);

INSERT INTO Product
VALUES ('Call of Duty: Modern Warfare 2', 69.99, null, 'Realistic Ego-Shooter', 2, 1),
('Eldenring', 69.99, null, 'Fantasy Souls-like RPG', 2, 1),
('God of War: Ragnarok', 69.99, null, 'Fantasy Action Game', 1, 1),
('Halo: Infinite', 69.99, null, 'Fantasy Ego-Shooter', 2, 1),
('Hogwarts Legacy', 69.99, null, 'Fantasy Action RPG', 1, 1),
('Kena: Bridge of Spirits', 49.99, null, 'Fantasy Action Game', 1, 1),
('Mario and Rabbids: Sparks Of Hope', 59.99, null, 'Tactical Third Person RPG', 0, 1),
('Minecraft', 29.99, null, 'Survivial Game', 0, 1),
('Pokemon: Diamond', 59.99, null, 'Fantasy RPG with round-based combat', 0, 1),

('Joy-Con', 59.99, null, 'Controller für Nintendo Switch', 0, 2),
('PS5-Controller', 69.99, null, 'Controller für PlayStation 5', 1, 2),
('XBox-Controller', 64.99, null, 'Controller für XBox Series X', 2, 2),
('Switch Pro Controller', 64.99, null, 'Controller für Nintendo Switch', 0, 2),

('Playstation 5', 499.99, null, 'Videospielkonsole von Sony', 0, 1),
('Nintendo Switch (OLED)', 329.99, null, 'Videospielkonsole von Nintendo', 0, 0),
('Xbox Series X', 449.99, null, 'Videospielkonsole von Microsoft', 2, 0);




