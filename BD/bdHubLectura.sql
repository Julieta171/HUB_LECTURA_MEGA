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
('El bosque de los pigmeos', 'Isabel Allende', 'Aventura',  'Una aventura en �frica de Alexander Cold y Nadia Santos, explorando temas de conservaci�n y cultura.'),

('Caballo de Troya', 'J.J. Ben�tez', 'Ciencia ficci�n', 'Un viajero del tiempo investiga los �ltimos d�as de Jes�s, mezclando historia y ficci�n.'),

('La ciudad de las bestias', 'Isabel Allende', 'Aventura juvenil', 'Un joven y su abuela periodista viven una aventura en el Amazonas, descubriendo misterios y criaturas legendarias.'),

('Cad�ver Exquisito', 'Agustina Bazterrica', 'Ficci�n',  'La s�bita aparici�n de un virus letal que ataca a los animales modifica de manera irreversible el mundo: desde las fieras hasta las mascotas deben ser sistem�ticamente sacrificadas, y su carne ya no puede ser consumida. Los gobiernos enfrentan la situaci�n con una decisi�n dr�stica: legalizando la cr�a, reproducci�n, matanza y procesamiento de carne humana.'),

('Crimen y castigo', 'Fiodor Dostoyevski', 'Novela psicol�gica',  'La historia de un doble crimen cometido por un joven y su subsecuente lucha interna con sus emociones y sus delirios.'),

('El conde de Montecristo', 'Alejandro Dumas', 'Aventura-drama',  'Condenado a cumplir una condena que no merece en la siniestra prisi�n del castillo de If, Edmond vivir� una larga pesadilla de trece a�os. Obsesionado por su inesperado destino, dejar� de lado sus convicciones en torno al bien y al mal, y se dedicar� a tramar la venganza perfecta.'),

('El perfume', 'Patrick S�skind', 'Novela', 'Quiz� los olores evoquen el privilegio de la invisibilidad. Antes del tacto, sucede el olor, como mensajero de una esencia que sabe desaparecer en el aire y ser agente de un gran poder.'),

('Harry Potter y la piedra filosofal', 'J. K. Rowling', 'Fantas�a, Aventuras', 'Harry Potter se ha quedado hu�rfano y vive en casa de sus abominables t�os y el insoportable primo Dudley. Harry se siente muy triste y solo, hasta que un buen d�a recibe una carta que cambiar� su vida para siempre.'),

('Los abominables dibujos de Emilio Fors', 'Jos� Madero Vizca�no', 'Thriller psicol�gic000o', 'Emilio Fors es un chico casi como cualquier otro. Est� en sexto de primaria y siempre le ha gustado pasar desapercibido. Por las noches comienza a tener una pesadilla recurrente. Todo empeora cuando lo que sufre en sue�os lo acompa�a al despertar.'),

('Los hornos de Hitler', 'Olga Lengyel', 'Memorias y testimonio', 'Una sobreviviente de los campos de concentraci�n de Auschwitz y de Birkenau. La visi�n de cinco chimeneas arrojando el humo de la carne quemada de centenares de miles de seres humanos, entre ellos los padres y los dos hijos de la escritora.'),

('Fundamentos de sistemas operativos', 'Abraham Silberschatz, Greg Gagne, Peter Baer Galvin', 'Textos acad�micos y libros de texto t�cnicos', 'Se trata de un libro que se adapta a la asignatura de sistemas operativos gen�rica, pero sin dejar de ser un texto actualizado, con los aspectos m�s relevantes bien marcados y adaptado a las nuevas necesidades de los cursos.');


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
('Cien A�os de Soledad', 'Gabriel Garc�a M�rquez', 'Realismo M�gico', 'La historia de la familia Buend�a en el pueblo ficticio de Macondo.'),

('1984', 'George Orwell', 'Distop�a', 'Una sociedad totalitaria donde el Gran Hermano lo controla todo.'),

('El Principito', 'Antoine de Saint-Exup�ry', 'F�bula', 'La historia de un joven pr�ncipe que explora el universo.'),

('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Novela de Caballer�as', 'Las aventuras de un hidalgo que sue�a con ser un caballero.'),

('Orgullo y Prejuicio', 'Jane Austen', 'Romance', 'La vida y relaciones de la familia Bennet en la Inglaterra del siglo XIX.'),

('Matar a un Ruise�or', 'Harper Lee', 'Ficci�n', 'Una historia sobre la injusticia racial en el sur de Estados Unidos.'),

('El Hobbit', 'J.R.R. Tolkien', 'Fantas�a', 'Las aventuras de Bilbo Bols�n en su b�squeda para reclamar un tesoro de un drag�n.'),

('El Gran Gatsby', 'F. Scott Fitzgerald', 'Ficci�n', 'La historia de Jay Gatsby y su obsesi�n por Daisy Buchanan en la alta sociedad de los a�os 20.'),

('Cumbres Borrascosas', 'Emily Bront�', 'G�tica', 'Un relato de pasi�n y venganza en los p�ramos ingleses.'),

('La Metamorfosis', 'Franz Kafka', 'Existencialismo', 'La historia de un hombre que se despierta un d�a convertido en un insecto gigante.'),


('La Isla del Tesoro', 'Robert Louis Stevenson', 'Aventura', 'La b�squeda de un tesoro en una isla deshabitada, liderada por el joven Jim Hawkins y el pirata Long John Silver.'),

('Las Aventuras de Tom Sawyer', 'Mark Twain', 'Aventura', 'Las aventuras de Tom Sawyer y su amigo Huckleberry Finn a orillas del r�o Mississippi.'),

('Robinson Crusoe', 'Daniel Defoe', 'Aventura', 'La historia de un n�ufrago que sobrevive en una isla desierta durante 28 a�os.'),

('El Proceso', 'Franz Kafka', 'Novela Psicol�gica', 'La angustiosa y absurda experiencia de Josef K., quien es arrestado y enjuiciado por un crimen que desconoce.'),

('El T�nel', 'Ernesto Sabato', 'Novela Psicol�gica', 'El mon�logo de un pintor que narra su obsesi�n amorosa y el crimen que comete.'),

('La N�usea', 'Jean-Paul Sartre', 'Novela Psicol�gica', 'Un profundo an�lisis existencialista de la vida a trav�s del protagonista, Antoine Roquentin.'),


('El Se�or de los Anillos: La Comunidad del Anillo', 'J.R.R. Tolkien', 'Fantas�a', 'La primera parte de la �pica historia de la lucha por destruir el Anillo �nico y salvar la Tierra Media.'),

('La Historia Interminable', 'Michael Ende', 'Fantas�a', 'La historia de Bastian, un ni�o que se adentra en el m�gico mundo de Fantasia a trav�s de un libro.'),

('Las Cr�nicas de Narnia: El Le�n, la Bruja y el Ropero', 'C.S. Lewis', 'Fantas�a', 'Cuatro hermanos descubren un mundo m�gico llamado Narnia y se enfrentan a la malvada Bruja Blanca.');
GO



SELECT *FROM Libros