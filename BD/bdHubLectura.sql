CREATE DATABASE Hub_libros
GO
USE Hub_libros
GO

CREATE TABLE Usuarios(
   UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
   Nombre NVARCHAR(200) NOT NULL,
   Apellido NVARCHAR(200) NOT NULL


)
GO
CREATE TABLE  Libros(
  LibroID INT IDENTITY(1,1) PRIMARY KEY ,
  Titulo NVARCHAR(100) NOT NULL,
  Autor NVARCHAR(200) NOT NULL,
  Genero NVARCHAR(100) NOT NULL,
  Sinopsis NVARCHAR(MAX),

  
)
GO
CREATE TABLE Libros_leidos(
	LibrosLeidosID INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioID Int,
    LibroID Int, 
	FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)
)
GO

CREATE TABLE  Libros_por_leer (

    LibrosLeerID INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioID INT,
	LibroID INT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)

)
GO
CREATE TABLE  Libros_Descartados (

    LibrosDesID INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioID Int,
	LibroID INT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)
    
	)
	GO

	CREATE TABLE Generos_Favoritos (
    GeneroID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT,
    Genero VARCHAR(50),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	
)
GO


)
GO

INSERT INTO Libros (Titulo, Autor, Genero, Sinopsis)
VALUES 
('El bosque de los pigmeos', 'Isabel Allende', 'Aventura',  'Una aventura en África de Alexander Cold y Nadia Santos, explorando temas de conservación y cultura.'),

('Caballo de Troya', 'J.J. Benítez', 'Ciencia ficción', 'Un viajero del tiempo investiga los últimos días de Jesús, mezclando historia y ficción.'),

('La ciudad de las bestias', 'Isabel Allende', 'Aventura juvenil', 'Un joven y su abuela periodista viven una aventura en el Amazonas, descubriendo misterios y criaturas legendarias.'),

('Cadáver Exquisito', 'Agustina Bazterrica', 'Ficción',  'La súbita aparición de un virus letal que ataca a los animales modifica de manera irreversible el mundo: desde las fieras hasta las mascotas deben ser sistemáticamente sacrificadas, y su carne ya no puede ser consumida. Los gobiernos enfrentan la situación con una decisión drástica: legalizando la cría, reproducción, matanza y procesamiento de carne humana.'),

('Crimen y castigo', 'Fiodor Dostoyevski', 'Novela psicológica',  'La historia de un doble crimen cometido por un joven y su subsecuente lucha interna con sus emociones y sus delirios.'),

('El conde de Montecristo', 'Alejandro Dumas', 'Aventura-drama',  'Condenado a cumplir una condena que no merece en la siniestra prisión del castillo de If, Edmond vivirá una larga pesadilla de trece años. Obsesionado por su inesperado destino, dejará de lado sus convicciones en torno al bien y al mal, y se dedicará a tramar la venganza perfecta.'),

('El perfume', 'Patrick Süskind', 'Novela', 'Quizá los olores evoquen el privilegio de la invisibilidad. Antes del tacto, sucede el olor, como mensajero de una esencia que sabe desaparecer en el aire y ser agente de un gran poder.'),

('Harry Potter y la piedra filosofal', 'J. K. Rowling', 'Fantasía, Aventuras', 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y el insoportable primo Dudley. Harry se siente muy triste y solo, hasta que un buen día recibe una carta que cambiará su vida para siempre.'),

('Los abominables dibujos de Emilio Fors', 'José Madero Vizcaíno', 'Thriller psicológic000o', 'Emilio Fors es un chico casi como cualquier otro. Está en sexto de primaria y siempre le ha gustado pasar desapercibido. Por las noches comienza a tener una pesadilla recurrente. Todo empeora cuando lo que sufre en sueños lo acompaña al despertar.'),

('Los hornos de Hitler', 'Olga Lengyel', 'Memorias y testimonio', 'Una sobreviviente de los campos de concentración de Auschwitz y de Birkenau. La visión de cinco chimeneas arrojando el humo de la carne quemada de centenares de miles de seres humanos, entre ellos los padres y los dos hijos de la escritora.'),

('Fundamentos de sistemas operativos', 'Abraham Silberschatz, Greg Gagne, Peter Baer Galvin', 'Textos académicos y libros de texto técnicos', 'Se trata de un libro que se adapta a la asignatura de sistemas operativos genérica, pero sin dejar de ser un texto actualizado, con los aspectos más relevantes bien marcados y adaptado a las nuevas necesidades de los cursos.');


GO

INSERT INTO Usuarios(Nombre, Apellido)
VALUES 
('Emmanuel', 'Salcedo'),
('Aldair', 'Ortiz'),
('Julieta', 'Jimenez');
GO

SELECT *FROM Libros
SELECT *FROM Usuarios


INSERT INTO Libros (Titulo, Autor, Genero, Sinopsis)
VALUES 
('Cien Años de Soledad', 'Gabriel García Márquez', 'Realismo Mágico', 'La historia de la familia Buendía en el pueblo ficticio de Macondo.'),

('1984', 'George Orwell', 'Distopía', 'Una sociedad totalitaria donde el Gran Hermano lo controla todo.'),

('El Principito', 'Antoine de Saint-Exupéry', 'Fábula', 'La historia de un joven príncipe que explora el universo.'),

('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Novela de Caballerías', 'Las aventuras de un hidalgo que sueña con ser un caballero.'),

('Orgullo y Prejuicio', 'Jane Austen', 'Romance', 'La vida y relaciones de la familia Bennet en la Inglaterra del siglo XIX.'),

('Matar a un Ruiseñor', 'Harper Lee', 'Ficción', 'Una historia sobre la injusticia racial en el sur de Estados Unidos.'),

('El Hobbit', 'J.R.R. Tolkien', 'Fantasía', 'Las aventuras de Bilbo Bolsón en su búsqueda para reclamar un tesoro de un dragón.'),

('El Gran Gatsby', 'F. Scott Fitzgerald', 'Ficción', 'La historia de Jay Gatsby y su obsesión por Daisy Buchanan en la alta sociedad de los años 20.'),

('Cumbres Borrascosas', 'Emily Brontë', 'Gótica', 'Un relato de pasión y venganza en los páramos ingleses.'),

('La Metamorfosis', 'Franz Kafka', 'Existencialismo', 'La historia de un hombre que se despierta un día convertido en un insecto gigante.'),


('La Isla del Tesoro', 'Robert Louis Stevenson', 'Aventura', 'La búsqueda de un tesoro en una isla deshabitada, liderada por el joven Jim Hawkins y el pirata Long John Silver.'),

('Las Aventuras de Tom Sawyer', 'Mark Twain', 'Aventura', 'Las aventuras de Tom Sawyer y su amigo Huckleberry Finn a orillas del río Mississippi.'),

('Robinson Crusoe', 'Daniel Defoe', 'Aventura', 'La historia de un náufrago que sobrevive en una isla desierta durante 28 años.'),

('El Proceso', 'Franz Kafka', 'Novela Psicológica', 'La angustiosa y absurda experiencia de Josef K., quien es arrestado y enjuiciado por un crimen que desconoce.'),

('El Túnel', 'Ernesto Sabato', 'Novela Psicológica', 'El monólogo de un pintor que narra su obsesión amorosa y el crimen que comete.'),

('La Náusea', 'Jean-Paul Sartre', 'Novela Psicológica', 'Un profundo análisis existencialista de la vida a través del protagonista, Antoine Roquentin.'),


('El Señor de los Anillos: La Comunidad del Anillo', 'J.R.R. Tolkien', 'Fantasía', 'La primera parte de la épica historia de la lucha por destruir el Anillo Único y salvar la Tierra Media.'),

('La Historia Interminable', 'Michael Ende', 'Fantasía', 'La historia de Bastian, un niño que se adentra en el mágico mundo de Fantasia a través de un libro.'),

('Las Crónicas de Narnia: El León, la Bruja y el Ropero', 'C.S. Lewis', 'Fantasía', 'Cuatro hermanos descubren un mundo mágico llamado Narnia y se enfrentan a la malvada Bruja Blanca.');
GO



SELECT *FROM Libros